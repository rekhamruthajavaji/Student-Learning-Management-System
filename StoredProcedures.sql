DELIMITER //

CREATE PROCEDURE EnrollStudent(
IN sid INT,
IN cid INT
)
BEGIN

INSERT INTO Enrollments
(student_id,course_id,enrollment_date)
VALUES
(sid,cid,CURDATE());

END //

CREATE PROCEDURE GenerateResult(
IN sid INT,
IN cid INT,
IN m INT,
IN g CHAR(2)
)
BEGIN

INSERT INTO Results
(student_id,course_id,marks,grade)
VALUES
(sid,cid,m,g);

END //

DELIMITER ;