CREATE DATABASE students;
    USE students;
    -- create table studentDetails
    CREATE TABLE studentDetails(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth INT,
    gender VARCHAR(50),
    email VARCHAR(50)
    );
    -- create table courses
    CREATE TABLE courses(
     course_id INT PRIMARY KEY AUTO_INCREMENT,
     course_name VARCHAR(50),
     course_code VARCHAR(50) NOT NULL
    );
    -- create table enrollments
    CREATE TABLE enrollments(
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollment_date INT,
    student_id INT,
    course_id INT,
    UNIQUE (student_id , course_id),
    FOREIGN KEY (student_id) REFERENCES studentDetails(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
    );
	-- one to one relationship
    SELECT 
        s.first_name,
        s.last_name,
        s.date_of_birth,
        s.gender,
        s.email,
        e.student_id
	FROM studentDetails s
    JOIN enrollments e
    ON e.student_id = s.student_id;
    -- One to many realtionship
    SELECT
        c.course_code,
        c.course_name,
        e.course_id
	FROM courses c
    JOIN enrollments e
    ON e.course_id = c.course_id;
    -- Many to many relationship
SELECT s.student_id, s.first_name, s.last_name, c.course_name
FROM studentDetails s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;
