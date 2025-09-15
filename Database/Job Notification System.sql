-- Creating Database
DROP DATABASE IF EXISTS JobNotificationSystem;
CREATE DATABASE JobNotificationSystem;


-- Using Database
Use JobNotificationSystem;

-- Creating Table for Users

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(100) UNIQUE NOT NULL,
    UserPassword VARCHAR(255) NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Location VARCHAR(100),
    AccCreatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    AccUpdatedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UserStatus ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- --------------------------------------------------------------UserPreferences Table-----------------------------------------------------------------------


-- Table for User Preferences
CREATE TABLE UserPreferences (
    PreferenceID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT NOT NULL,
    PreferredLocation VARCHAR(100),
    PreferredIndustry VARCHAR(100),
    MinimumHours DECIMAL(10,2),
    JobType ENUM('Part Time', 'Full Time', 'Internship'),
    UserPreferredRole VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
);
-- --------------------------------------------------------------Companies Table-----------------------------------------------------------------------


-- Table for Companies
CREATE TABLE Companies (
    CompanyID INT PRIMARY KEY AUTO_INCREMENT,
    CompanyName VARCHAR(100) NOT NULL,
    CompanyWebsite VARCHAR(255),
    Industry VARCHAR(100),
    Location VARCHAR(100),
    CompanyEmail VARCHAR(100)
);


-- --------------------------------------------------------------JobPortal Table-----------------------------------------------------------------------

-- Create JobPortals Table
CREATE TABLE JobPortals (
    PortalID INT PRIMARY KEY AUTO_INCREMENT,
    JobPortal VARCHAR(50) UNIQUE
);


-- --------------------------------------------------------------Jobs Table-----------------------------------------------------------------------

CREATE TABLE Jobs (
    JobID INT PRIMARY KEY AUTO_INCREMENT,
    Jobtitle VARCHAR(100) NOT NULL,
    CompanyID INT,
    JobDescription TEXT,
    Location VARCHAR(100),
    SalaryRange VARCHAR(50),
    EmploymentType VARCHAR(50),
    Requirements TEXT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    JobURL VARCHAR(255),
    JobStatus ENUM('Active', 'Inactive'),
    PortalID INT,
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID) ON DELETE SET NULL,
		FOREIGN KEY (PortalID) REFERENCES JobPortals(PortalID) ON DELETE SET NULL

);


-- --------------------------------------------------------------Applications Table-----------------------------------------------------------------------


-- Table for Applications
CREATE TABLE Applications (
    ApplicationID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    JobID INT,
    Applicationstatus VARCHAR(50),
    ApplicationappliedAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE
);

-- --------------------------------------------------------------Notifications Table-----------------------------------------------------------------------


-- Table for creating Notifications (Associates Users and Jobs)
CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    JobID INT,
    Message TEXT,
    Notification_sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE
);


-- --------------------------------------------------------------Skills Table-----------------------------------------------------------------------

-- Table for creating Skills
CREATE TABLE Skills (
    SkillID INT PRIMARY KEY AUTO_INCREMENT,
    SkillName VARCHAR(100) NOT NULL,
    Skillsource VARCHAR(100) NOT NULL,
    SkillsourceURL VARCHAR(255) NOT NULL,
    SkillcreatedAT DATE NOT NULL
);

-- --------------------------------------------------------------UserSkills Table-----------------------------------------------------------------------

-- Table for creating UserSkills
CREATE TABLE UserSkills (
    UserskillID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    SkillID INT,
    Proficiency VARCHAR(50),
    Experience INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID) ON DELETE CASCADE
);

-- --------------------------------------------------------------JobSkills Table-----------------------------------------------------------------------


CREATE TABLE JobSkills (
    JobSkillID INT PRIMARY KEY AUTO_INCREMENT,
    JobID INT NOT NULL,
    SkillID INT NOT NULL,
    ImportanceLevel INT CHECK (ImportanceLevel <= 5),
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE,
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID) ON DELETE CASCADE
);

-- --------------------------------------------------------------UserAlerts Table-----------------------------------------------------------------------



CREATE TABLE UserAlerts (
    AlertID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT NOT NULL,
    JobID INT NOT NULL,
    SkillID INT NOT NULL,
    Message TEXT,
    SkillSourceURL VARCHAR(255),
    AlertTimestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE,
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID) ON DELETE CASCADE
);
