CREATE DATABASE learning_management;
USE learning_management;

CREATE TABLE Students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    branch VARCHAR(30),
    semester INT
);

CREATE TABLE Courses(
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    credits INT
);

CREATE TABLE Instructors(
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    department VARCHAR(30)
);

CREATE TABLE Enrollments(
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);

CREATE TABLE Assignments(
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    assignment_title VARCHAR(50),
    due_date DATE,

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);

CREATE TABLE Results(
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    marks INT,
    grade CHAR(2),

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);
