📚 Database Management System Project
📌 Objective

This project is a complete Relational Database Management System (RDBMS) designed and implemented using MySQL. The goal is to apply database design principles, implement constraints, and establish relationships between tables to model a real-world scenario.

🛠️ Use Case Chosen

Student Records Management System

Manages student information, courses, enrollments, grades, and related data.

Supports relationships like One-to-One, One-to-Many, and Many-to-Many.

📂 Database Schema Overview

The schema consists of the following tables:

Students – Stores student personal details.

StudentProfiles – Extends students with profile details (1:1).

Courses – Contains available courses.

Enrollments – Junction table linking students and courses (M:N).

Departments – Groups courses under specific departments (1:N).

Teachers – Stores information about teachers.

Grades – Records student performance in courses.

Attendance – Tracks student attendance.

Payments – Manages student fee payments.

🔑 Constraints Used

PRIMARY KEY – Ensures each record is uniquely identifiable.

FOREIGN KEY – Establishes relationships between tables.

UNIQUE – Prevents duplicate values (e.g., student email).

NOT NULL – Ensures required fields are always filled.

🔗 Relationships Demonstrated

One-to-One (1:1) → Students ↔ StudentProfiles

One-to-Many (1:N) → Departments → Courses, Courses → Students

Many-to-Many (M:N) → Students ↔ Enrollments ↔ Courses

📜 Deliverables

The project is delivered as a single .sql file containing:

CREATE DATABASE statement.

CREATE TABLE statements for all tables.

Proper constraints and relationships.
