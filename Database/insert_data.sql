-- Using Database
Use JobNotificationSystem;
-- --------------------------------------------------------------Users Table-----------------------------------------------------------------------

INSERT INTO Users (UserID, Email, UserPassword, FirstName, LastName, PhoneNumber, Location, AccCreatedAT, AccUpdatedAT, UserStatus)
VALUES
(1, 'john.doe1@example.com', 'password123', 'John', 'Doe', '123-456-7890', 'New York', '2023-07-15 10:00:00', '2023-07-15 10:00:00', 'Inactive'),
(2, 'jane.smith1@example.com', 'password123', 'Jane', 'Smith', '321-654-0987', 'Los Angeles', '2023-07-20 11:00:00', '2023-07-20 11:00:00', 'Inactive'),
(3, 'michael.jones1@example.com', 'password123', 'Michael', 'Jones', '234-567-8901', 'Chicago', '2023-08-10 12:00:00', '2023-08-10 12:00:00', 'Inactive'),
(4, 'lisa.brown1@example.com', 'password123', 'Lisa', 'Brown', '876-543-2109', 'Houston', '2023-09-05 13:00:00', '2023-09-05 13:00:00', 'Inactive'),
(5, 'emily.davis1@example.com', 'password123', 'Emily', 'Davis', '345-678-9012', 'Phoenix', '2023-09-15 14:00:00', '2023-09-15 14:00:00', 'Inactive'),
(6, 'chris.wilson1@example.com', 'password123', 'Chris', 'Wilson', '789-012-3456', 'Seattle', '2023-10-01 15:00:00', '2024-01-01 15:00:00', 'Active'),
(7, 'maria.garcia1@example.com', 'password123', 'Maria', 'Garcia', '654-321-0987', 'San Francisco', '2023-10-05 16:00:00', '2024-02-05 16:00:00', 'Active'),
(8, 'david.miller1@example.com', 'password123', 'David', 'Miller', '567-890-1234', 'Denver', '2023-10-10 17:00:00', '2024-03-10 17:00:00', 'Active'),
(9, 'susan.taylor1@example.com', 'password123', 'Susan', 'Taylor', '210-987-6543', 'Austin', '2023-10-15 18:00:00', '2024-04-15 18:00:00', 'Active'),
(10, 'william.moore1@example.com', 'password123', 'William', 'Moore', '432-109-8765', 'Boston', '2023-10-20 19:00:00', '2024-05-20 19:00:00', 'Active'),
(11, 'john.doe2@example.com', 'password123', 'John', 'Doe', '123-111-7890', 'New York', '2023-10-25 10:00:00', '2024-06-25 10:00:00', 'Active'),
(12, 'jane.smith2@example.com', 'password123', 'Jane', 'Smith', '321-222-0987', 'Los Angeles', '2023-11-01 11:00:00', '2024-07-01 11:00:00', 'Active'),
(13, 'michael.jones2@example.com', 'password123', 'Michael', 'Jones', '234-333-8901', 'Chicago', '2023-11-02 12:00:00', '2024-08-02 12:00:00', 'Active'),
(14, 'lisa.brown2@example.com', 'password123', 'Lisa', 'Brown', '876-444-2109', 'Houston', '2023-11-03 13:00:00', '2024-09-03 13:00:00', 'Active'),
(15, 'emily.davis2@example.com', 'password123', 'Emily', 'Davis', '345-555-9012', 'Phoenix', '2023-11-04 14:00:00', '2024-10-04 14:00:00', 'Active'),
(16, 'chris.wilson2@example.com', 'password123', 'Chris', 'Wilson', '789-666-3456', 'Seattle', '2023-11-05 15:00:00', '2024-11-05 15:00:00', 'Active'),
(17, 'maria.garcia2@example.com', 'password123', 'Maria', 'Garcia', '654-777-0987', 'San Francisco', '2023-11-06 16:00:00', '2024-12-06 16:00:00', 'Active'),
(18, 'david.miller2@example.com', 'password123', 'David', 'Miller', '567-888-1234', 'Denver', '2023-11-07 17:00:00', '2024-12-07 17:00:00', 'Active'),
(19, 'susan.taylor2@example.com', 'password123', 'Susan', 'Taylor', '210-999-6543', 'Austin', '2023-11-08 18:00:00', '2024-12-08 18:00:00', 'Active'),
(20, 'william.moore2@example.com', 'password123', 'William', 'Moore', '432-000-8765', 'Boston', '2023-11-09 19:00:00', '2024-12-09 19:00:00', 'Active');

Select* From Users;
-- --------------------------------------------------------------UserPreferences Table-----------------------------------------------------------------------

INSERT INTO UserPreferences (UserID, PreferredLocation, PreferredIndustry, MinimumHours, JobType, UserPreferredRole)
VALUES
-- User 1: Multiple preferences
(1, 'New York', 'Technology', 40, 'Full Time', 'Front End Developer'),
(1, 'New York', 'Technology', 30, 'Part Time', 'Back End Developer'),

-- User 2: Single preference
(2, 'Los Angeles', 'Finance', 30, 'Part Time', 'Data Analyst'),

-- User 3: Multiple preferences
(3, 'Chicago', 'Retail', 20, 'Full Time', 'Back End Developer'),
(3, 'Chicago', 'Retail', 25, 'Part Time', 'Mobile Developer'),

-- User 4: Single preference
(4, 'Houston', 'Healthcare', 40, 'Full Time', 'Data Scientist'),

-- User 5: Single preference
(5, 'Phoenix', NULL, 15, 'Internship', 'Mobile Developer'),

-- User 6: Multiple preferences
(6, 'Seattle', 'Technology', 40, 'Full Time', 'Full Stack Developer'),
(6, 'Seattle', 'Technology', 30, 'Part Time', 'DevOps Engineer'),

-- User 7: Single preference
(7, 'San Francisco', 'Marketing', 30, 'Part Time', 'Data Engineer'),

-- User 8: Single preference
(8, 'Denver', 'Technology', 20, 'Internship', 'DevOps Engineer'),

-- User 9: Multiple preferences
(9, 'Austin', 'Education', 35, 'Full Time', 'AI Specialist'),
(9, 'Austin', 'Education', 30, 'Part Time', 'Machine Learning Engineer'),

-- User 10: Single preference
(10, 'Boston', NULL, 20, 'Internship', 'Front End Developer'),

-- User 11: Single preference
(11, 'New York', 'Logistics', 40, 'Full Time', 'Full Stack Developer'),

-- User 12: Single preference
(12, 'Los Angeles', 'Technology', 30, 'Part Time', 'Machine Learning Engineer'),

-- User 13: Single preference
(13, 'Chicago', 'Retail', 20, 'Internship', 'Back End Developer'),

-- User 14: Multiple preferences
(14, 'Houston', 'Healthcare', 40, 'Full Time', 'Data Scientist'),
(14, 'Houston', 'Healthcare', 30, 'Part Time', 'Data Analyst'),

-- User 15: Single preference
(15, 'Phoenix', NULL, 15, 'Internship', 'Mobile Developer'),

-- User 16: Multiple preferences
(16, 'Seattle', 'Technology', 40, 'Full Time', 'Full Stack Developer'),
(16, 'Seattle', 'Technology', 30, 'Part Time', 'DevOps Engineer'),

-- User 17: Single preference
(17, 'San Francisco', 'Marketing', 30, 'Internship', 'Data Analyst'),

-- User 18: Single preference
(18, 'Denver', 'Technology', 20, 'Part Time', 'DevOps Engineer'),

-- User 19: Multiple preferences
(19, 'Austin', 'Education', 35, 'Full Time', 'AI Specialist'),
(19, 'Austin', 'Education', 30, 'Part Time', 'Data Engineer'),

-- User 20: Single preference
(20, 'Boston', NULL, 15, 'Internship', 'Front End Developer');



Select* From UserPreferences;

-- --------------------------------------------------------------Companies Table-----------------------------------------------------------------------

INSERT INTO Companies (CompanyID, CompanyName, CompanyWebsite, Industry, Location, CompanyEmail)
VALUES
(1, 'TechFront Solutions', 'http://techfrontsolutions.com', 'Technology', 'New York', 'info@techfrontsolutions.com'),
(2, 'BackEnd Innovations', 'http://backendinnovations.com', 'Software Development', 'Chicago', 'contact@backendinnovations.com'),
(3, 'FullStack Corp', 'http://fullstackcorp.com', 'Web Development', 'Los Angeles', 'hr@fullstackcorp.com'),
(4, 'Mobile Masters', 'http://mobilemasters.com', 'Mobile Development', 'Seattle', 'jobs@mobilemasters.com'),
(5, 'DevOps Dynamics', 'http://devopsdynamics.com', 'Cloud Computing', 'Denver', 'support@devopsdynamics.com'),

(6, 'DataViz Analytics', 'http://datavizanalytics.com', 'Analytics', 'San Francisco', 'team@datavizanalytics.com'),
(7, 'DataArch Architects', 'http://dataarcharchitects.com', 'Big Data', 'Boston', 'hello@dataarcharchitects.com'),
(8, 'ML Works', 'http://mlworks.com', 'Machine Learning', 'Austin', 'careers@mlworks.com'),
(9, 'AI Pioneers', 'http://aipioneers.com', 'Artificial Intelligence', 'Houston', 'inquiries@aipioneers.com'),

(10, 'NextGen FrontEnd', 'http://nextgenfrontend.com', 'Web Development', 'San Diego', 'info@nextgenfrontend.com'),
(11, 'Dallas Backend Ltd', 'http://dallasbackend.com', 'Software Development', 'Dallas', 'jobs@dallasbackend.com'),
(12, 'Insight Analytics', 'http://insightanalytics.com', 'Data Analytics', 'Miami', 'contact@insightanalytics.com'),
(13, 'Portland Data Builders', 'http://portlanddatabuilders.com', 'Big Data', 'Portland', 'team@portlanddatabuilders.com'),

(14, 'Phoenix FullStackers', 'http://phoenixfullstackers.com', 'Web Development', 'Phoenix', 'hr@phoenixfullstackers.com'),
(15, 'Charlotte Mobile Devs', 'http://charlottemobiledevs.com', 'Mobile Development', 'Charlotte', 'contact@charlottemobiledevs.com'),
(16, 'Atlanta CloudOps', 'http://atlantacloudops.com', 'Cloud Computing', 'Atlanta', 'info@atlantacloudops.com'),

(17, 'Philly AI Labs', 'http://phillyailabs.com', 'Artificial Intelligence', 'Philadelphia', 'jobs@phillyailabs.com'),
(18, 'San Jose AI Hub', 'http://sanjoseaihub.com', 'Artificial Intelligence', 'San Jose', 'hr@sanjoseaihub.com'),
(19, 'Austin AI Engineers', 'http://austinai.com', 'Artificial Intelligence', 'Austin', 'careers@austinai.com'),
(20, 'Boston Data Crafters', 'http://bostondatacrafters.com', 'Big Data', 'Boston', 'jobs@bostondatacrafters.com');

-- --------------------------------------------------------------JobPortal Table-----------------------------------------------------------------------


INSERT INTO JobPortals (JobPortal)
VALUES
('Indeed'),
('LinkedIn'),
('Naukri'),
('Monster'),
('Turing');

-- --------------------------------------------------------------Jobs Table-----------------------------------------------------------------------


INSERT INTO Jobs (JobID, Jobtitle, CompanyID, JobDescription, Location, SalaryRange, EmploymentType, Requirements, DatePosted, JobURL, JobStatus, PortalID)
VALUES
(21, 'Front End Developer', 1, 'Responsible for building interactive user interfaces using HTML, CSS, and JavaScript.', 'New York', '$80,000 - $100,000', 'Full Time', 'Proficiency in React or Angular; 3+ years of experience.', '2024-01-10 09:00:00', 'http://example.com/jobs/frontend-developer', 'Active', 1),
(22, 'Back End Developer', 2, 'Focuses on server-side application logic and database integration.', 'Chicago', '$85,000 - $110,000', 'Full Time', 'Experience with Node.js, Python, or Java; Database knowledge is a must.', '2024-01-11 10:00:00', 'http://example.com/jobs/backend-developer', 'Active', 2),
(23, 'Full Stack Developer', 3, 'Develops and manages both front-end and back-end services.', 'Los Angeles', '$90,000 - $120,000', 'Full Time', 'Strong knowledge of full stack frameworks like MERN or MEAN; 4+ years of experience.', '2024-01-12 11:00:00', 'http://example.com/jobs/fullstack-developer', 'Active', 3),
(24, 'Mobile Developer', 4, 'Designs and builds applications for mobile platforms.', 'Seattle', '$75,000 - $95,000', 'Part Time', 'Experience in iOS or Android development; Proficiency in Swift or Kotlin.', '2024-01-13 12:00:00', 'http://example.com/jobs/mobile-developer', 'Active', 4),
(25, 'DevOps Engineer', 5, 'Responsible for deployment and system reliability.', 'Denver', '$95,000 - $115,000', 'Full Time', 'Knowledge of CI/CD tools, cloud platforms like AWS, and scripting languages.', '2024-01-14 13:00:00', 'http://example.com/jobs/devops-engineer', 'Active', 1),
(26, 'Data Analyst', 6, 'Analyzes data to identify trends and deliver insights.', 'San Francisco', '$70,000 - $90,000', 'Full Time', 'Proficiency in SQL, Excel, and visualization tools like Tableau or Power BI.', '2024-01-15 14:00:00', 'http://example.com/jobs/data-analyst', 'Active', 2),
(27, 'Data Engineer', 7, 'Builds and maintains data pipelines and architectures.', 'Boston', '$100,000 - $130,000', 'Full Time', 'Experience with ETL tools, cloud data warehouses, and big data frameworks.', '2024-01-16 15:00:00', 'http://example.com/jobs/data-engineer', 'Active', 3),
(28, 'Machine Learning Engineer', 8, 'Develops machine learning models and pipelines.', 'Austin', '$110,000 - $140,000', 'Full Time', 'Knowledge of TensorFlow, PyTorch, and Python; Understanding of ML algorithms.', '2024-01-17 16:00:00', 'http://example.com/jobs/ml-engineer', 'Active', 4),
(29, 'AI Specialist', 9, 'Specializes in artificial intelligence and cognitive systems.', 'Houston', '$120,000 - $150,000', 'Full Time', 'Experience with AI frameworks, NLP, and deep learning models.', '2024-01-18 17:00:00', 'http://example.com/jobs/ai-specialist', 'Active', 1),
(30, 'Front End Developer', 1, 'Designs responsive user interfaces for web applications.', 'San Diego', '$85,000 - $105,000', 'Full Time', 'Proficiency in Vue.js or Angular; Strong CSS skills.', '2024-01-19 18:00:00', 'http://example.com/jobs/frontend-developer-sd', 'Active', 2),
(31, 'Back End Developer', 2, 'Manages APIs and server-side programming.', 'Dallas', '$90,000 - $115,000', 'Part Time', 'Strong knowledge of server-side languages like Java or Python.', '2024-01-20 19:00:00', 'http://example.com/jobs/backend-developer-dallas', 'Active', 3),
(32, 'Game Developer', 12, 'Develops and implements gameplay mechanics and user interactions.', 'Las Vegas', '$85,000 - $120,000', 'Full Time', 'Proficiency in C++ or Unity; Experience in game development frameworks.', '2024-01-28 10:00:00', 'http://example.com/jobs/game-developer', 'Active', 4),
(33, 'Data Analyst', 6, 'Collaborates with stakeholders to provide actionable insights.', 'Miami', '$75,000 - $95,000', 'Full Time', 'Strong analytical and problem-solving skills; Experience in BI tools.', '2024-01-21 09:00:00', 'http://example.com/jobs/data-analyst-miami', 'Active', 1),
(34, 'Data Engineer', 7, 'Designs scalable data architectures for analytical purposes.', 'Portland', '$105,000 - $135,000', 'Full Time', 'Expertise in SQL, Python, and cloud platforms.', '2024-01-22 10:00:00', 'http://example.com/jobs/data-engineer-portland', 'Active', 2),
(35, 'Big Data Specialist', 13, 'Designs and manages large-scale data pipelines for analytics.', 'Salt Lake City', '$110,000 - $150,000', 'Full Time', 'Expertise in Hadoop, Spark, and cloud platforms.', '2024-01-29 12:00:00', 'http://example.com/jobs/big-data-specialist', 'Active', 3),
(36, 'Full Stack Developer', 3, 'Handles both front-end and back-end tasks efficiently.', 'Phoenix', '$95,000 - $125,000', 'Full Time', 'Experience in Node.js, React, and Docker.', '2024-01-23 11:00:00', 'http://example.com/jobs/fullstack-developer-phoenix', 'Active', 4),
(37, 'Mobile Developer', 4, 'Creates mobile applications with seamless user experiences.', 'Charlotte', '$80,000 - $100,000', 'Part Time', 'Knowledge of Flutter or React Native.', '2024-01-24 12:00:00', 'http://example.com/jobs/mobile-developer-charlotte', 'Active', 1),
(38, 'DevOps Engineer', 5, 'Automates deployment pipelines for high availability.', 'Atlanta', '$100,000 - $125,000', 'Full Time', 'Experience in Terraform, Kubernetes, and CI/CD tools.', '2024-01-25 13:00:00', 'http://example.com/jobs/devops-engineer-atlanta', 'Active', 2),
(39, 'Machine Learning Engineer', 8, 'Builds production-ready ML models.', 'Philadelphia', '$115,000 - $145,000', 'Full Time', 'Expertise in NLP and deep learning techniques.', '2024-01-26 14:00:00', 'http://example.com/jobs/ml-engineer-philly', 'Active', 3),
(40, 'AI Specialist', 9, 'Leads AI research and implementation efforts.', 'San Jose', '$125,000 - $155,000', 'Full Time', 'Knowledge of GPT models, Vision AI, and deep learning frameworks.', '2024-01-27 15:00:00', 'http://example.com/jobs/ai-specialist-sj', 'Active', 4);


Select * from jobs;

-- --------------------------------------------------------------Applications Table-----------------------------------------------------------------------

INSERT INTO Applications (UserID, JobID, Applicationstatus, ApplicationappliedAT)
VALUES
-- Applications for User 6
(6, 24, 'Pending', '2023-12-15 15:00:00'), -- After DatePosted (2024-01-13) and before AccUpdatedAT (2024-01-01)
(6, 25, 'Accepted', '2023-12-18 15:30:00'), -- After DatePosted (2024-01-14) and before AccUpdatedAT (2024-01-01)

-- Applications for User 7
(7, 26, 'Pending', '2024-01-16 10:00:00'), -- After DatePosted (2024-01-15) and before AccUpdatedAT (2024-02-05)
(7, 27, 'Rejected', '2024-01-18 11:00:00'), -- After DatePosted (2024-01-16) and before AccUpdatedAT (2024-02-05)

-- Applications for User 8
(8, 28, 'Accepted', '2024-02-01 17:00:00'), -- After DatePosted (2024-01-17) and before AccUpdatedAT (2024-03-10)

-- Applications for User 9
(9, 29, 'Pending', '2024-02-15 18:00:00'), -- After DatePosted (2024-01-18) and before AccUpdatedAT (2024-04-15)

-- Applications for User 10
(10, 30, 'Pending', '2024-03-01 19:00:00'), -- After DatePosted (2024-01-19) and before AccUpdatedAT (2024-05-20)
(10, 31, 'Rejected', '2024-03-05 19:30:00'), -- After DatePosted (2024-01-20) and before AccUpdatedAT (2024-05-20)

-- Applications for User 11
(11, 32, 'Accepted', '2024-03-25 10:30:00'), -- After DatePosted (2024-01-28) and before AccUpdatedAT (2024-06-25)

-- Applications for User 12
(12, 33, 'Pending', '2024-04-01 11:30:00'), -- After DatePosted (2024-01-21) and before AccUpdatedAT (2024-07-01)

-- Applications for User 13
(13, 34, 'Accepted', '2024-05-01 12:30:00'), -- After DatePosted (2024-01-22) and before AccUpdatedAT (2024-08-02)

-- Applications for User 14
(14, 35, 'Rejected', '2024-05-15 13:30:00'), -- After DatePosted (2024-01-29) and before AccUpdatedAT (2024-09-03)

-- Applications for User 15
(15, 36, 'Pending', '2024-06-01 14:30:00'), -- After DatePosted (2024-01-23) and before AccUpdatedAT (2024-10-04)

-- Applications for User 16
(16, 37, 'Pending', '2024-07-01 15:30:00'), -- After DatePosted (2024-01-24) and before AccUpdatedAT (2024-11-05)
(16, 38, 'Accepted', '2024-07-15 16:30:00'), -- After DatePosted (2024-01-25) and before AccUpdatedAT (2024-11-05)

-- Applications for User 17
(17, 39, 'Pending', '2024-08-01 17:30:00'), -- After DatePosted (2024-01-26) and before AccUpdatedAT (2024-12-06)

-- Applications for User 18
(18, 40, 'Rejected', '2024-08-15 18:30:00'), -- After DatePosted (2024-01-27) and before AccUpdatedAT (2024-12-07)
-- Application for User 19
(19, 29, 'Pending', '2024-02-20 10:00:00'), -- After DatePosted (2024-01-18) and before AccUpdatedAT (2024-12-08)

-- Application for User 20
(20, 30, 'Accepted', '2024-04-01 11:00:00'), -- After DatePosted (2024-01-19) and before AccUpdatedAT (2023-12-09)
(20, 31, 'Rejected', '2024-05-05 12:00:00');

select * from Applications;


-- --------------------------------------------------------------Notifications Table-----------------------------------------------------------------------


INSERT INTO Notifications (UserID, JobID, Message, Notification_sent_at)
VALUES
-- Notifications for Active Users
(6, 21, 'New job opening for Front End Developer in New York. Apply now!', '2024-01-11 08:00:00'),
(7, 26, 'New job opening for Data Analyst in San Francisco. Check it out!', '2024-01-15 13:00:00'),
(8, 25, 'Exciting opportunity for DevOps Engineer in Denver. Don\'t miss it!', '2024-01-16 14:00:00'),
(9, 28, 'Machine Learning Engineer role open in Austin. Apply today!', '2024-01-17 15:00:00'),
(10, 30, 'Front End Developer position available in San Diego. Explore now!', '2024-01-20 17:00:00'),

-- Notifications for Additional Users
(11, 32, 'Exciting role for Game Developer in Las Vegas. Apply now!', '2024-01-28 09:00:00'),
(12, 34, 'New job for Data Engineer in Portland. Don\'t miss out!', '2024-01-22 09:30:00'),
(13, 35, 'Big Data Specialist position available in Salt Lake City. Check it out!', '2024-01-29 11:30:00'),
(14, 36, 'Full Stack Developer needed in Phoenix. Apply today!', '2024-01-23 10:00:00'),
(15, 37, 'Mobile Developer role open in Charlotte. Check it out!', '2024-01-24 11:00:00'),

-- Notifications for Users Receiving Multiple Alerts
(6, 23, 'Full Stack Developer position open in Los Angeles. Don\'t miss out!', '2024-01-12 12:00:00'),
(7, 27, 'Data Engineer opportunity in Boston. Apply now!', '2024-01-16 15:00:00'),
(8, 38, 'DevOps Engineer needed in Atlanta. Don\'t miss out!', '2024-01-25 13:30:00'),
(9, 39, 'Machine Learning Engineer opening in Philadelphia. Check it out!', '2024-01-26 14:30:00'),
(10, 40, 'AI Specialist role available in San Jose. Apply today!', '2024-01-27 15:30:00');




-- --------------------------------------------------------------Skills Table-----------------------------------------------------------------------

INSERT INTO Skills (SkillName, Skillsource, SkillsourceURL, SkillcreatedAT)
VALUES
-- Programming Skills
('HTML', 'Coursera', 'https://www.coursera.org/learn/html', '2023-01-10'),
('CSS', 'Udemy', 'https://www.udemy.com/course/css-for-beginners', '2023-02-15'),
('JavaScript', 'Pluralsight', 'https://www.pluralsight.com/courses/javascript', '2023-03-20'),
('Python', 'Coursera', 'https://www.coursera.org/learn/python', '2023-04-10'),
('Java', 'Udemy', 'https://www.udemy.com/course/java-programming', '2023-05-05'),
('SQL', 'DataCamp', 'https://www.datacamp.com/courses/sql', '2023-06-10'),
('AWS', 'AWS Learning', 'https://aws.amazon.com/training/', '2023-07-15'),
('GCP', 'Google Cloud', 'https://cloud.google.com/training/', '2023-08-01'),
('Kubernetes', 'EdX', 'https://www.edx.org/course/kubernetes', '2023-08-20'),
('Docker', 'Pluralsight', 'https://www.pluralsight.com/courses/docker', '2023-09-05'),

-- Data Science & Machine Learning
('Pandas', 'Coursera', 'https://www.coursera.org/learn/pandas-data-analysis', '2023-03-15'),
('NumPy', 'Udemy', 'https://www.udemy.com/course/numpy', '2023-04-25'),
('TensorFlow', 'Google AI', 'https://www.tensorflow.org/learn', '2023-05-20'),
('PyTorch', 'Udacity', 'https://www.udacity.com/course/pytorch', '2023-06-30'),
('Tableau', 'Tableau', 'https://www.tableau.com/learn/training', '2023-07-10'),

-- Cloud & DevOps
('Azure', 'Microsoft Learn', 'https://learn.microsoft.com/en-us/training/', '2023-08-15'),
('Ansible', 'Red Hat', 'https://www.redhat.com/en/technologies/management/ansible', '2023-09-01'),
('Terraform', 'HashiCorp', 'https://learn.hashicorp.com/terraform', '2023-09-10'),
('CI/CD', 'Udemy', 'https://www.udemy.com/course/ci-cd', '2023-10-01'),
('Big Data', 'DataCamp', 'https://www.datacamp.com/courses/big-data', '2023-10-20');


SELECT * FROM Skills;

-- --------------------------------------------------------------UserSkills Table-----------------------------------------------------------------------


INSERT INTO UserSkills (UserID, SkillID, Proficiency, Experience)
VALUES
-- User 1: John Doe
(1, 1, 'Intermediate', 2), -- HTML
(1, 3, 'Beginner', 1),     -- JavaScript
(1, 6, 'Intermediate', 3), -- SQL

-- User 2: Jane Smith
(2, 2, 'Advanced', 5),     -- CSS
(2, 4, 'Intermediate', 2), -- Python
(2, 15, 'Advanced', 4),    -- Tableau

-- User 3: Michael Jones
(3, 5, 'Intermediate', 3), -- Java
(3, 7, 'Beginner', 1),     -- AWS
(3, 6, 'Advanced', 4),     -- SQL

-- User 4: Lisa Brown
(4, 9, 'Advanced', 5),     -- Kubernetes
(4, 10, 'Intermediate', 3), -- Docker
(4, 18, 'Beginner', 1),    -- Terraform

-- User 5: Emily Davis
(5, 11, 'Advanced', 4),    -- Pandas
(5, 12, 'Intermediate', 3), -- NumPy
(5, 14, 'Advanced', 5),    -- PyTorch

-- User 6: Chris Wilson
(6, 7, 'Advanced', 5),     -- AWS
(6, 8, 'Intermediate', 3), -- GCP
(6, 17, 'Beginner', 1),    -- Ansible

-- User 7: Maria Garcia
(7, 13, 'Advanced', 5),    -- TensorFlow
(7, 15, 'Intermediate', 3), -- Tableau
(7, 19, 'Beginner', 1),    -- CI/CD

-- User 8: David Miller
(8, 6, 'Advanced', 5),     -- SQL
(8, 20, 'Intermediate', 4), -- Big Data
(8, 9, 'Beginner', 1),     -- Kubernetes

-- User 9: Susan Taylor
(9, 14, 'Advanced', 5),    -- PyTorch
(9, 12, 'Intermediate', 3), -- NumPy
(9, 8, 'Beginner', 1),     -- GCP

-- User 10: William Moore
(10, 5, 'Intermediate', 3), -- Java
(10, 10, 'Advanced', 5),    -- Docker
(10, 18, 'Intermediate', 2), -- Terraform

-- User 11: John Doe (Active)
(11, 3, 'Advanced', 5),    -- JavaScript
(11, 4, 'Intermediate', 4), -- Python
(11, 7, 'Beginner', 2),    -- AWS

-- User 12: Jane Smith (Active)
(12, 15, 'Advanced', 5),   -- Tableau
(12, 6, 'Intermediate', 3), -- SQL
(12, 2, 'Beginner', 1),    -- CSS

-- User 13: Michael Jones (Active)
(13, 9, 'Advanced', 5),    -- Kubernetes
(13, 10, 'Intermediate', 3), -- Docker
(13, 20, 'Intermediate', 2), -- Big Data

-- User 14: Lisa Brown (Active)
(14, 17, 'Intermediate', 4), -- Ansible
(14, 18, 'Advanced', 5),     -- Terraform
(14, 19, 'Beginner', 1),     -- CI/CD

-- User 15: Emily Davis (Active)
(15, 13, 'Advanced', 5),    -- TensorFlow
(15, 14, 'Intermediate', 3), -- PyTorch
(15, 11, 'Intermediate', 2), -- Pandas

-- User 16: Chris Wilson (Active)
(16, 7, 'Advanced', 5),     -- AWS
(16, 8, 'Intermediate', 4), -- GCP
(16, 10, 'Beginner', 2),    -- Docker

-- User 17: Maria Garcia (Active)
(17, 19, 'Advanced', 5),    -- CI/CD
(17, 9, 'Intermediate', 3), -- Kubernetes
(17, 18, 'Beginner', 1),    -- Terraform

-- User 18: David Miller (Active)
(18, 6, 'Advanced', 5),     -- SQL
(18, 7, 'Intermediate', 4), -- AWS
(18, 20, 'Beginner', 2);    -- Big Data

SELECT * FROM UserSkills;

-- --------------------------------------------------------------JobSkills Table-----------------------------------------------------------------------

INSERT INTO JobSkills (JobID, SkillID, ImportanceLevel)
VALUES
-- Job 21: Front End Developer
(21, 1, 5), -- HTML
(21, 2, 5), -- CSS
(21, 3, 5), -- JavaScript
(21, 4, 4), -- React

-- Job 22: Back End Developer
(22, 4, 5), -- Python
(22, 5, 5), -- Java
(22, 6, 5), -- SQL
(22, 10, 4), -- Docker

-- Job 23: Full Stack Developer
(23, 1, 4), -- HTML
(23, 2, 4), -- CSS
(23, 3, 5), -- JavaScript
(23, 6, 5), -- SQL
(23, 7, 4), -- AWS

-- Job 24: Mobile Developer
(24, 11, 5), -- Pandas
(24, 12, 4), -- NumPy
(24, 8, 5), -- GCP
(24, 13, 4), -- TensorFlow

-- Job 25: DevOps Engineer
(25, 9, 5), -- Kubernetes
(25, 10, 5), -- Docker
(25, 17, 4), -- Ansible
(25, 18, 4), -- Terraform
(25, 19, 4), -- CI/CD

-- Job 26: Data Analyst
(26, 6, 5), -- SQL
(26, 15, 5), -- Tableau
(26, 11, 4), -- Pandas
(26, 12, 4), -- NumPy

-- Job 27: Data Engineer
(27, 6, 5), -- SQL
(27, 7, 5), -- AWS
(27, 20, 4), -- Big Data
(27, 18, 3), -- Terraform

-- Job 28: Machine Learning Engineer
(28, 13, 5), -- TensorFlow
(28, 14, 5), -- PyTorch
(28, 12, 4), -- NumPy
(28, 15, 3), -- Tableau

-- Job 29: AI Specialist
(29, 13, 5), -- TensorFlow
(29, 14, 5), -- PyTorch
(29, 7, 4), -- AWS
(29, 12, 3), -- NumPy

-- Job 30: Front End Developer
(30, 1, 5), -- HTML
(30, 2, 5), -- CSS
(30, 3, 5), -- JavaScript
(30, 4, 4), -- React

-- Job 31: Back End Developer
(31, 4, 5), -- Python
(31, 5, 4), -- Java
(31, 6, 5), -- SQL
(31, 10, 3), -- Docker

-- Job 32: Game Developer
(32, 9, 5), -- Kubernetes
(32, 13, 5), -- TensorFlow
(32, 14, 4), -- PyTorch
(32, 18, 4), -- Terraform

-- Job 33: Data Analyst
(33, 6, 5), -- SQL
(33, 15, 5), -- Tableau
(33, 11, 4), -- Pandas
(33, 12, 3), -- NumPy

-- Job 34: Data Engineer
(34, 7, 5), -- AWS
(34, 8, 5), -- GCP
(34, 20, 4), -- Big Data
(34, 6, 4), -- SQL

-- Job 35: Big Data Specialist
(35, 20, 5), -- Big Data
(35, 7, 5), -- AWS
(35, 9, 4), -- Kubernetes
(35, 10, 4), -- Docker

-- Job 36: Full Stack Developer
(36, 1, 5), -- HTML
(36, 3, 5), -- JavaScript
(36, 4, 4), -- React
(36, 6, 4), -- SQL

-- Job 37: Mobile Developer
(37, 11, 5), -- Pandas
(37, 12, 5), -- NumPy
(37, 8, 4), -- GCP
(37, 13, 4), -- TensorFlow

-- Job 38: DevOps Engineer
(38, 9, 5), -- Kubernetes
(38, 10, 5), -- Docker
(38, 17, 4), -- Ansible
(38, 18, 4), -- Terraform

-- Job 39: Machine Learning Engineer
(39, 13, 5), -- TensorFlow
(39, 14, 5), -- PyTorch
(39, 12, 4), -- NumPy
(39, 19, 3), -- CI/CD

-- Job 40: AI Specialist
(40, 13, 5), -- TensorFlow
(40, 14, 5), -- PyTorch
(40, 8, 4), -- GCP
(40, 7, 4); -- AWS

SELECT * FROM Users;
