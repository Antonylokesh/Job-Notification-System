
# JobNotificationSystem - System Architecture Description

## 🏗️ Overview
The **Job Notification System** is designed to connect job seekers with job opportunities tailored to their preferences and skillsets. The system supports user registration, job postings, job applications, skill tracking, personalized alerts, and notifications.

---

## 🔧 Key Components and Flow

### 1. Users Module
- **Table**: `Users`
- **Role**: Stores all registered job seekers with their personal and account-related information.
- **Interaction**:
  - Users register and update preferences.
  - Users receive notifications and apply to jobs.

---

### 2. Preferences Module
- **Table**: `UserPreferences`
- **Role**: Stores user-defined preferences such as preferred location, industry, hours, job type, and desired role.
- **Interaction**:
  - Used to match job postings with user expectations.
  - Supports personalized job recommendations.

---

### 3. Companies & Jobs Module
- **Tables**: `Companies`, `Jobs`
- **Role**:
  - `Companies` table holds employer information.
  - `Jobs` table contains open job listings.
- **Interaction**:
  - Employers can post jobs via the portal or external sources.
  - Each job is associated with a company and a job portal.

---

### 4. JobPortals Module
- **Table**: `JobPortals`
- **Role**: Represents external job platforms (e.g., LinkedIn, Indeed).
- **Interaction**:
  - Helps track the source of each job posting.

---

### 5. Skills Management Module
- **Tables**: `Skills`, `UserSkills`, `JobSkills`
- **Roles**:
  - `Skills`: Master list of skills.
  - `UserSkills`: Tracks a user's proficiency and experience in specific skills.
  - `JobSkills`: Identifies required skills for each job with importance levels.
- **Interaction**:
  - Supports job-user skill matching.
  - Enables upskilling suggestions.

---

### 6. Applications Module
- **Table**: `Applications`
- **Role**: Records which users applied to which jobs, including status and application timestamp.
- **Interaction**:
  - Users apply to jobs.
  - Employers or system updates status (Pending, Accepted, Rejected).

---

### 7. Notifications Module
- **Table**: `Notifications`
- **Role**: Stores job alerts sent to users based on job matches.
- **Interaction**:
  - Periodic job notifications are pushed based on user preferences and new job postings.

---

### 8. User Alerts Module
- **Table**: `UserAlerts`
- **Role**: Recommends skill improvements to users to better match job requirements.
- **Interaction**:
  - Generated when a mismatch between job-required skills and user skills is detected.
  - Includes links to relevant courses (learning paths).

---

## 🔁 Data Flow Summary
1. **User Registration** → Adds records to `Users` and `UserPreferences`.
2. **Skill Tracking** → Users update `UserSkills`; employers define `JobSkills`.
3. **Job Posting** → Companies post jobs (`Jobs`) linked to `Companies` and `JobPortals`.
4. **Job Matching & Alerts**:
   - System compares `UserPreferences` + `UserSkills` with `Jobs` + `JobSkills`.
   - If suitable, records go into `Notifications` and `UserAlerts`.
5. **Applications** → Users apply to jobs, creating records in `Applications`.
6. **Status Updates** → Employers/system update `Applicationstatus`.
7. **Continuous Learning** → `UserAlerts` guide users to improve skills based on `Skills`.

---

## 🧩 Architecture Characteristics
- **Relational Model**: All data is normalized into related tables.
- **Scalable**: Supports multiple preferences, skills, and alerts per user.
- **Extensible**: New skills, jobs, or portals can be added without schema disruption.
- **Integrated**: Cross-linked references ensure tight integration across modules (e.g., foreign keys).
