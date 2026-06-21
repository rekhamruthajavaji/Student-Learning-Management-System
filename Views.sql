CREATE VIEW Academic_Dashboard AS
SELECT
s.student_name,
c.course_name,
r.marks,
r.grade
FROM Students s
JOIN Results r
ON s.student_id = r.student_id
JOIN Courses c
ON r.course_id = c.course_id;