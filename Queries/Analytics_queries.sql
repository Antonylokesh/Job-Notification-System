-- analytics_queries.sql

-- 1. Identify the top 5 jobs based on number of applications received
SELECT j.Jobtitle, COUNT(a.ApplicationID) AS No_of_Applications
FROM Jobs AS j
INNER JOIN Applications AS a ON j.JobID = a.JobID
GROUP BY j.Jobtitle
ORDER BY No_of_Applications DESC
LIMIT 5;

-- 2. Track how many users applied for jobs after receiving notifications
SELECT N.JobID, J.JobTitle, CONCAT(u.FirstName," ",u.LastName) AS FullName, 
       N.Notification_sent_at, A.ApplicationappliedAT, A.JobID
FROM Jobs AS J
INNER JOIN Notifications AS N ON J.JobID = N.JobID
INNER JOIN Users AS U ON U.UserID = N.UserID
INNER JOIN Applications AS A ON U.UserID = A.UserID
WHERE N.Notification_sent_at < A.ApplicationappliedAT AND N.JobID = A.JobID;

-- 3. Identify companies with the most active job postings and applications
SELECT C.CompanyName, COUNT(j.JobID) AS No_of_JobsPosted, 
       COUNT(a.ApplicationID) AS No_of_JobApplications
FROM Companies AS C
INNER JOIN Jobs AS J ON C.CompanyID = J.CompanyID
LEFT JOIN Applications AS A ON J.JobID = A.JobID
GROUP BY C.CompanyName
ORDER BY No_of_JobsPosted DESC, No_of_JobApplications DESC;

-- 4. Analyze the success rate of applications for specific job roles
SELECT j.JobTitle, COUNT(a.ApplicationID) AS TotalApplications,
       SUM(CASE WHEN a.ApplicationStatus = 'Accepted' THEN 1 ELSE 0 END) AS SuccessfulApplications,
       ROUND(SUM(CASE WHEN a.ApplicationStatus = 'Accepted' THEN 1 ELSE 0 END) * 100.0 / COUNT(a.ApplicationID), 2) AS SuccessRate
FROM Applications a
JOIN Jobs j ON a.JobID = j.JobID
GROUP BY j.JobTitle
ORDER BY SuccessRate DESC;

-- 5. Determine the jobs that took the longest time to be filled
SELECT j.JobTitle, j.DatePosted, MAX(a.ApplicationAppliedAT) AS LastApplicationDate,
       DATEDIFF(MAX(a.ApplicationAppliedAT), j.DatePosted) AS No_of_days_Job_was_Opened
FROM Jobs AS j
INNER JOIN Applications AS a ON j.JobID = a.JobID
WHERE Applicationstatus = 'Accepted'
GROUP BY j.JobID
ORDER BY No_of_days_Job_was_Opened DESC
LIMIT 5;

-- 6. Determine which industries demand specific skills the most
SELECT c.Industry, s.SkillName, COUNT(js.JobSkillID) AS Demand
FROM Companies AS c
INNER JOIN Jobs AS j ON c.CompanyID = j.CompanyID
INNER JOIN JobSkills AS js ON j.JobID = js.JobID
INNER JOIN Skills AS s ON js.SkillID = s.SkillID
GROUP BY c.Industry, s.SkillName
ORDER BY Demand DESC;

-- 7. Recommend jobs other than user preferred role if user has at least one matching skill
SELECT UserDetails.UserPreferredRole, UserDetails.FullName, UserDetails.UserSkills,
       C.CompanyName AS Recomended_Company, J.JobTitle AS Recommended_Role,
       GROUP_CONCAT(DISTINCT S.SkillName) AS JobSkills
FROM Companies AS C
INNER JOIN Jobs AS J ON C.CompanyID = J.CompanyID
INNER JOIN JobSkills AS JS ON J.JobID = JS.JobID
INNER JOIN Skills AS S ON JS.SkillID = S.SkillID
CROSS JOIN (
    SELECT UP.UserPreferredRole, U.UserID, CONCAT(U.FirstName, " ", U.LastName) AS FullName,
           GROUP_CONCAT(DISTINCT S.SkillName) AS UserSkills
    FROM UserPreferences AS UP
    INNER JOIN Users AS U ON UP.UserID = U.UserID
    INNER JOIN UserSkills AS US ON U.UserID = US.UserID
    INNER JOIN Skills AS S ON US.SkillID = S.SkillID
    GROUP BY UP.UserPreferredRole, U.UserID
) AS UserDetails
WHERE UserDetails.UserPreferredRole <> J.JobTitle 
  AND EXISTS (
        SELECT 1
        FROM JobSkills JS2
        INNER JOIN UserSkills US2 ON JS2.SkillID = US2.SkillID
        WHERE JS2.JobID = J.JobID AND US2.UserID = UserDetails.UserID
)
GROUP BY C.CompanyName, J.JobID, J.JobTitle, UserDetails.UserPreferredRole, UserDetails.UserID, UserDetails.FullName;

-- 8. Users missing required skills for the job they applied to
SELECT a.UserID, CONCAT(u.FirstName, " ", u.LastName) AS FullName, j.JobTitle,
       GROUP_CONCAT(s.SkillName) AS MissingSkills
FROM Applications AS a
INNER JOIN Jobs AS j ON a.JobID = j.JobID
INNER JOIN JobSkills AS js ON j.JobID = js.JobID
INNER JOIN Skills AS s ON js.SkillID = s.SkillID
LEFT JOIN UserSkills AS us ON a.UserID = us.UserID AND js.SkillID = us.SkillID
INNER JOIN Users AS u ON a.UserID = u.UserID
WHERE us.SkillID IS NULL
GROUP BY a.UserID, j.JobTitle;

-- 9. Companies with the highest number of job applications
SELECT C.CompanyName, J.JobTitle, COUNT(A.ApplicationID) AS ApplicationsReceived
FROM Companies AS C
INNER JOIN Jobs AS J ON C.CompanyID = J.CompanyID
LEFT JOIN Applications AS A ON J.JobID = A.JobID
GROUP BY C.CompanyName, J.JobTitle
ORDER BY ApplicationsReceived DESC
LIMIT 5;

-- 10. User Preferences vs Job Openings
SELECT UP.UserPreferredRole, COUNT(DISTINCT J.JobID) AS AvailableJobs, COUNT(DISTINCT U.UserID) AS InterestedUsers
FROM UserPreferences AS UP
LEFT JOIN Jobs AS J ON UP.UserPreferredRole = J.JobTitle
INNER JOIN Users AS U ON UP.UserID = U.UserID
GROUP BY UP.UserPreferredRole
ORDER BY AvailableJobs DESC;
