-- DBMS Day 2
-- Advanced SELECT, Filtering and Aggregate Functions
USE dbms_learning;

SELECT DISTINCT course
FROM student;

SELECT *
FROM student
LIMIT 2;

SELECT *
FROM student
WHERE name LIKE 'A%' ;

SELECT *
FROM student 
WHERE name LIKE '%a' ;

SELECT *
FROM student
WHERE age IN (19,21);

SELECT *
FROM student 
WHERE age BETWEEN 19 AND 21;

SELECT *
FROM student
WHERE course IS NULL;

SELECT *
FROM student
WHERE NOT age =20;

SELECT *
FROM student
WHERE(age =19 OR age = 21)
AND course ='BCS';

SELECT name AS student_name, age AS
student_age
FROM student;

SELECT *
FROM student
WHERE age NOT IN (19,21);

SELECT *
FROM student
WHERE name LIKE'_a%';

SELECT COUNT(*) AS total_students
FROM student;

SELECT SUM(age) AS total_age
FROM student;

SELECT AVG(age) AS average_age
FROM student;

SELECT MIN(age) AS yougest_age
FROM student;

SELECT MAX(age) AS oldest_age
FROM student;

SELECT course,COUNT(*) AS
total_students
FROM student
GROUP BY course;

SELECT course, COUNT(*) AS
total_students
FROM student
GROUP BY course
HAVING COUNT(*)> 1;

SELECT course,COUNT(*) AS
total_students
FROM student
GROUP BY course
ORDER BY total_students DESC;

SELECT * FROM student;

SELECT name, age
FROM student
WHERE age >=20
ORDER BY age DESC;

SELECT course, COUNT(*) AS
total_students
FROM student
GROUP BY course
HAVING COUNT(*)> 1;

SELECT name,age
FROM student
WHERE age BETWEEN 19 AND 21
ORDER BY age ASC; 