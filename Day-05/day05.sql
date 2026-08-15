--DBMS Day 5
--Subqueries and Nested Queries
USE dbms_learning;

SELECT * FROM student;

SELECT AVG(age) AS average_age
FROM student;

SELECT name, age
FROM student
WHERE age > (
      SELECT AVG(age)
      FROM student
);

SELECT name, age
FROM student
WHERE age = (
      SELECT MAX(age)
      FROM student
);

SELECT name, age
FROM student
WHERE age = (
      SELECT MIN(age)
      FROM student
);

SELECT name, course
FROM student
WHERE course IN (
      SELECT course
      FROM course_details
);

SELECT name, course
FROM student
WHERE course NOT IN (
      SELECT course
      FROM course_details
);

SELECT name, age
FROM student
WHERE age > (
      SELECT AVG(age)
      FROM student
);

SELECT s.name, s.course
FROM student AS s
WHERE EXISTS (
      SELECT 1 
      FROM course_details AS c
      WHERE c.course = s.course
);

SELECT s.name, s.course
FROM student AS s
WHERE NOT EXISTS(
      SELECT 1
      FROM course_details AS c
      WHERE c.course = s.course
);

SELECT name, course
FROM student
WHERE course IN (
      SELECT course
      FROM course_details
      WHERE duration = (
           SELECT MAX(duration)
           FROM course_details
		)
);

SELECT name, age
FROM student
WHERE age> ALL (
      SELECT age
      FROM student
      WHERE course = 'BCS'
);

SELECT name, age
FROM student
WHERE age > ANY (
      SELECT age
      FROM student
      WHERE course = 'BCS'
);

SELECT name, course
FROM student
WHERE course IN (
      SELECT course
      FROM course_details
);

SELECT s.name, s.course
FROM student AS s
WHERE EXISTS (
      SELECT 1
      FROM course_details AS c
      WHERE c.course = s.course
);

SELECT name, age
FROM student
WHERE age = (
      SELECT MAX(age)
      FROM student
);

SELECT name, age
FROM student
WHERE age = (
      SELECT MIN(age)
      FROM student
);

SELECT name, age
FROM student
WHERE age > (
      SELECT AVG(age)
      FROM student
);