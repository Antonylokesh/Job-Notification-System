
-- Active Users and Their Preferences --------------------------------------------------------------------------------------------------------

SELECT u.FirstName, u.LastName, u.Email, up.PreferredLocation, up.JobType, up.UserPreferredRole
FROM Users u
JOIN UserPreferences up ON u.UserID = up.UserID
WHERE u.UserStatus = 'Active';

-- Jobs Matching User Skills (UserID = 6) -----------------------------------------------------------------------------------------------------

SELECT DISTINCT j.Jobtitle, c.CompanyName, j.Location, s.SkillName
FROM Jobs j
JOIN JobSkills js ON j.JobID = js.JobID
JOIN Skills s ON js.SkillID = s.SkillID
JOIN UserSkills us ON s.SkillID = us.SkillID
JOIN Companies c ON j.CompanyID = c.CompanyID
WHERE us.UserID = 6;


-- Notifications Sent to Users for Matching Jobs -----------------------------------------------------------------------------------------------

SELECT u.Email, j.Jobtitle, n.Message, n.Notification_sent_at
FROM Notifications n
JOIN Users u ON n.UserID = u.UserID
JOIN Jobs j ON n.JobID = j.JobID;

-- Applications Submitted with Status -----------------------------------------------------------------------------------------------------------

SELECT u.FirstName, u.LastName, j.Jobtitle, a.Applicationstatus, a.ApplicationappliedAT
FROM Applications a
JOIN Users u ON a.UserID = u.UserID
JOIN Jobs j ON a.JobID = j.JobID;

-- Suggest Skills for Job Matching (UserID = 20) ------------------------------------------------------------------------------------------------

SELECT DISTINCT s.SkillName, s.SkillsourceURL
FROM JobSkills js
JOIN Skills s ON js.SkillID = s.SkillID
WHERE js.SkillID NOT IN (
    SELECT us.SkillID
    FROM UserSkills us
    WHERE us.UserID = 20
);
