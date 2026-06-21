INSERT INTO Students
(student_name,email,branch,semester)
VALUES
('Rahul','rahul@gmail.com','CSE',5),
('Priya','priya@gmail.com','ISE',5),
('Kiran','kiran@gmail.com','ECE',4),
('Anita','anita@gmail.com','CSE',6),
('Ravi','ravi@gmail.com','AI',5);

INSERT INTO Courses
(course_name,credits)
VALUES
('Java Programming',4),
('Database Management System',4),
('Data Structures',3),
('Operating Systems',4),
('Machine Learning',4);

INSERT INTO Instructors
(instructor_name,email,department)
VALUES
('Ramesh','ramesh@gmail.com','CSE'),
('Suresh','suresh@gmail.com','ISE'),
('Mahesh','mahesh@gmail.com','ECE');

INSERT INTO Enrollments
(student_id,course_id,enrollment_date)
VALUES
(1,1,CURDATE()),
(2,2,CURDATE()),
(3,3,CURDATE()),
(4,4,CURDATE()),
(5,5,CURDATE());

INSERT INTO Assignments
(course_id,assignment_title,due_date)
VALUES
(1,'Java Mini Project','2026-07-10'),
(2,'SQL Assignment','2026-07-15'),
(3,'Linked List Assignment','2026-07-20'),
(4,'OS Case Study','2026-07-25'),
(5,'ML Project','2026-07-30');

INSERT INTO Results
(student_id,course_id,marks,grade)
VALUES
(1,1,92,'A'),
(2,2,88,'A'),
(3,3,80,'B'),
(4,4,95,'A'),
(5,5,90,'A');