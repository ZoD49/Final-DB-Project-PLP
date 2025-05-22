# Final-DB-Project-PLP

**Project Title**
School Record Management System

**Project Description**
The School Record Management System is a relational database designed to manage and track student data, course enrollment, teacher assignments, and grades within an academic institution.

Core Features:

Store and retrieve student profiles and guardian info

Manage teacher records and course assignments

Track student course enrollments and grades

Enforce data integrity using relationships and constraints

**How to Run/ Setup the Project**
Requirements:
MySQL Server (or any compatible RDBMS like MariaDB)

MySQL Workbench / phpMyAdmin / command line interface
<!-- Setup steps -->
1. Create the Database
<!-- SQL query -->
CREATE DATABASE school_db;
USE school_db;
2. Copy and Run the Schema
Paste the full schema from the previous message to create the tables with constraints.

3. (Optional) Insert Sample Data
You can populate the tables with sample INSERT statements.

4. Test Queries
Try SELECT, JOINs, and INSERTs to validate relationships:
<!-- SQL query -->
SELECT s.full_name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;