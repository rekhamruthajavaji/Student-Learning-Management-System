-- Top 5 Students by Average Marks
SELECT
s.student_id,
s.student_name,
AVG(r.marks) AS average_marks
FROM Students s
JOIN Results r
ON s.student_id = r.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_marks DESC
LIMIT 5;

-- Top 5 Popular Courses by Enrollment
SELECT
c.course_id,
c.course_name,
COUNT(e.student_id) AS total_students
FROM Courses c
JOIN Enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_students DESC
LIMIT 5;

-- Semester Performance Report
SELECT
s.semester,
COUNT(r.result_id) AS total_results,
AVG(r.marks) AS average_marks
FROM Students s
JOIN Results r
ON s.student_id = r.student_id
GROUP BY s.semester;

-- View Data
SELECT * FROM Academic_Dashboard;