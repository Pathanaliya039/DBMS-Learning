-- DBMS Day 4
-- SQL JOINs
USE dbms_learning;

CREATE  TABLE course_details(
course VARCHAR(50) PRIMARY KEY,
duration INT
);

INSERT INTO course_details (course,
duration)
VALUES
('BCS', 3),
('BCA', 3),
('MCA', 2);

SELECT * FROM course_details;

SELECT student.name,
       student.age,
       student.course,
       course_details.duration
FROM student
INNER JOIN course_details
ON student.course =
course_details.course;

SELECT s.name,
       s.age,
       s.course,
       c.duration
FROM student AS s
INNER JOIN course_details AS c
ON s.course = c.course;

SELECT s.name,
       s.course,
       c.duration
FROM student AS s
LEFT JOIN course_details AS c
ON s.course = c.course;

SELECT s.name,
       s.course,
       c.duration
FROM student AS s
RIGHT JOIN course_details AS c
ON s.course = c.course;

SELECT s.name, c.course
FROM student AS s
CROSS JOIN course_details AS C;

SELECT s.name,
	   s.course,
       c.duration
FROM student AS s
INNER JOIN course_details AS c
ON s.course = c.course
WHERE c.duration = 3;

SELECT s.name,
       s.age,
       s.course,
       c.duration
FROM student AS s
INNER JOIN course_details AS c
ON s.course = c.course;

SELECT s.name,
       s.course,
       c.duration
FROM student AS s
LEFT JOIN course_details AS c
ON s.course = c.course;

SELECT s.name,
       s.course,
       c.duration
FROM student AS s
INNER JOIN course_details AS c
ON s.course = c.course
WHERE c.duration = 3
ORDER BY s.name ASC;
