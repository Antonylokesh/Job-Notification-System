
# JobNotificationEngine - Database Schema Description

---

## Users

| Column Name     | Data Type               | Description                                 |
|-----------------|-------------------------|---------------------------------------------|
| UserID          | INT, PK, AUTO_INCREMENT | Unique identifier for each user.            |
| Email           | VARCHAR(100), UNIQUE    | User’s email address (used for login).      |
| UserPassword    | VARCHAR(255)            | Hashed password for authentication.         |
| FirstName       | VARCHAR(50)             | User’s first name.                          |
| LastName        | VARCHAR(50)             | User’s last name.                           |
| PhoneNumber     | VARCHAR(15)             | Contact number of the user.                 |
| Location        | VARCHAR(100)            | User’s current location.                    |
| AccCreatedAT    | TIMESTAMP               | Timestamp when the account was created.     |
| AccUpdatedAT    | TIMESTAMP               | Timestamp when the account was last updated.|
| UserStatus      | ENUM('Active', 'Inactive') | Indicates whether the user is active or inactive. |

---

## User Preferences

| Column Name        | Data Type                         | Description                                     |
|--------------------|-----------------------------------|-------------------------------------------------|
| PreferenceID       | INT, PK, AUTO_INCREMENT           | Unique ID for each preference entry.            |
| UserID             | INT, FK → Users(UserID)           | Links preference to a specific user.            |
| PreferredLocation  | VARCHAR(100)                      | Preferred city or region for the job.           |
| PreferredIndustry  | VARCHAR(100)                      | Desired industry to work in.                    |
| MinimumHours       | DECIMAL(10,2)                     | Minimum weekly working hours acceptable to the user. |
| JobType            | ENUM('Part Time', 'Full Time', 'Internship') | Preferred job type.            |
| UserPreferredRole  | VARCHAR(100)                      | User’s desired job role/title.                  |

---

## Companies

| Column Name     | Data Type               | Description                      |
|-----------------|-------------------------|----------------------------------|
| CompanyID       | INT, PK, AUTO_INCREMENT | Unique ID for each company.      |
| CompanyName     | VARCHAR(100)            | Name of the company.             |
| CompanyWebsite  | VARCHAR(255)            | Official website URL.            |
| Industry        | VARCHAR(100)            | Industry the company operates in.|
| Location        | VARCHAR(100)            | Company's location.              |
| CompanyEmail    | VARCHAR(100)            | Company’s official email.        |

---

## Job Portals

| Column Name  | Data Type               | Description                     |
|--------------|-------------------------|---------------------------------|
| PortalID     | INT, PK, AUTO_INCREMENT | Unique ID for the job portal.   |
| JobPortal    | VARCHAR(50), UNIQUE     | Name of the job portal.         |

---

## Jobs

| Column Name     | Data Type               | Description                       |
|-----------------|-------------------------|-----------------------------------|
| JobID           | INT, PK, AUTO_INCREMENT | Unique ID for each job.           |
| Jobtitle        | VARCHAR(100)            | Title of the job position.        |
| CompanyID       | INT, FK → Companies     | Company offering the job.         |
| JobDescription  | TEXT                    | Details about job responsibilities.|
| Location        | VARCHAR(100)            | Location of the job.              |
| SalaryRange     | VARCHAR(50)             | Salary range offered.             |
| EmploymentType  | VARCHAR(50)             | Type of employment.               |
| Requirements    | TEXT                    | Job requirements and qualifications.|
| DatePosted      | TIMESTAMP               | Date the job was posted.          |
| JobURL          | VARCHAR(255)            | Link to job posting.              |
| JobStatus       | ENUM('Active', 'Inactive') | Status of the job posting.     |
| PortalID        | INT, FK → JobPortals    | Source job portal ID.             |

---

## Applications

| Column Name         | Data Type               | Description                           |
|---------------------|-------------------------|---------------------------------------|
| ApplicationID       | INT, PK, AUTO_INCREMENT | Unique ID for each application.       |
| UserID              | INT, FK → Users         | Applicant’s user ID.                  |
| JobID               | INT, FK → Jobs          | ID of the job applied for.            |
| Applicationstatus   | VARCHAR(50)             | Status of the application.            |
| ApplicationappliedAT| TIMESTAMP               | Timestamp when application was submitted. |

---

## Notifications

| Column Name         | Data Type               | Description                          |
|---------------------|-------------------------|--------------------------------------|
| NotificationID      | INT, PK, AUTO_INCREMENT | Unique ID for each notification.     |
| UserID              | INT, FK → Users         | User receiving the notification.     |
| JobID               | INT, FK → Jobs          | Job associated with the notification.|
| Message             | TEXT                    | Message content sent to the user.    |
| Notification_sent_at| TIMESTAMP               | Timestamp when the notification was sent. |

---

## Skills

| Column Name     | Data Type               | Description                         |
|-----------------|-------------------------|-------------------------------------|
| SkillID         | INT, PK, AUTO_INCREMENT | Unique ID for each skill.           |
| SkillName       | VARCHAR(100)            | Name of the skill.                  |
| Skillsource     | VARCHAR(100)            | Source where the skill is learned.  |
| SkillsourceURL  | VARCHAR(255)            | URL to the skill course/material.   |
| SkillcreatedAT  | DATE                    | Date the skill record was created.  |

---

## User Skills

| Column Name     | Data Type               | Description                     |
|-----------------|-------------------------|---------------------------------|
| UserskillID     | INT, PK, AUTO_INCREMENT | Unique ID for each user-skill pair.|
| UserID          | INT, FK → Users         | ID of the user.                 |
| SkillID         | INT, FK → Skills        | ID of the skill.                |
| Proficiency     | VARCHAR(50)             | Skill level.                    |
| Experience      | INT                     | Years of experience.            |

---

## Job Skills

| Column Name     | Data Type               | Description                       |
|-----------------|-------------------------|-----------------------------------|
| JobSkillID      | INT, PK, AUTO_INCREMENT | Unique ID for job-skill mapping.  |
| JobID           | INT, FK → Jobs          | ID of the job.                    |
| SkillID         | INT, FK → Skills        | Required skill ID.                |
| ImportanceLevel | INT (max 5)             | Importance level of the skill.    |

---

## User Alerts

| Column Name     | Data Type               | Description                           |
|-----------------|-------------------------|---------------------------------------|
| AlertID         | INT, PK, AUTO_INCREMENT | Unique ID for each alert.             |
| UserID          | INT, FK → Users         | User receiving the alert.             |
| JobID           | INT, FK → Jobs          | Related job ID.                       |
| SkillID         | INT, FK → Skills        | Skill to consider learning.           |
| Message         | TEXT                    | Suggested action for the user.        |
| SkillSourceURL  | VARCHAR(255)            | URL to the skill source.              |
| AlertTimestamp  | TIMESTAMP               | Time the alert was generated.         |
