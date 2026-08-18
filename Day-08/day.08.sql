--DBMS Day 8
--SQL Views
USE dbms_learning;

SELECT * FROM student;

CREATE VIEW student_course_view AS
SELECT name, course
FROM student;

SELECT *
FROM student_course_view;

CREATE OR REPLACE VIEW
student_course_view AS
SELECT name, age, course
FROM student;

SELECT *
FROM student_course_view;

SELECT *
FROM student_course_view
WHERE age >=20;

CREATE VIEW adult_student_view AS
SELECT name, age, course
FROM student
WHERE age >= 20;

SELECT *
FROM adult_student_view;

DROP VIEW adult_student_view;

SHOW FULL TABLES WHERE Table_type = 
'VIEW';

CREATE VIEW
student_course_details_view AS
SELECT s.name,
	   s.course,
       c.course_name
FROM student AS s
JOIN course_details AS c
ON s.course = c.course;

DESCRIBE course_details;

CREATE VIEW
student_course_details_view AS
SELECT s.name,
       s.course,
       c.duration
FROM student AS s
JOIN course_details AS c
ON s.course = c.course;

SELECT *
FROM student_course_details_view;

CREATE VIEW bcs_student_view AS
SELECT name,
        age,
        course
FROM student
WHERE course = 'BCS';

SELECT *
FROM bcs_student_view;