--DBMS Day 6
--GROUP BY and HAVING
USE dbms_learning;

SELECT * FROM student;

SELECT course,
       COUNT(*) AS total_students
FROM student
GROUP BY course;

SELECT course,
	   AVG(age) AS average_age
FROM student
GROUP BY course;

SELECT course,
       MAX(age) AS oldest_age,
       MIN(age) AS youngest_age
FROM student
GROUP BY course;

SELECT course,
       SUM(age) AS total_age
FROM student
GROUP BY course;

SELECT course,
       COUNT(*) AS total_students
FROM student
GROUP BY course 
HAVING COUNT(*) > 1;

SELECT course,
       COUNT(*) AS total_students
FROM student
WHERE age >= 18
GROUP BY course
HAVING COUNT(*) > 1;

SELECT course,
       AVG(age) AS average_age
FROM student
GROUP BY course
HAVING AVG(age) > 18;

SELECT course,
       SUM(age) AS total_age
FROM student
GROUP BY course
HAVING SUM(age) > 40;

SELECT course,
       MAX(age) AS oldest_age
FROM student 
GROUP BY course
HAVING MAX(age) > 20;

SELECT course,
       MIN(age) AS youngest_age
FROM student
GROUP BY course
HAVING MIN(age) >= 18;

SELECT course,
       COUNT(*) AS total_students
FROM student
WHERE age >= 18
GROUP BY course;

SELECT course,
       COUNT(*) AS total_students
FROM student
GROUP BY course
HAVING COUNT(*) > 1;

SELECT course,
       COUNT(*) AS total_students
FROM student
GROUP BY course
HAVING COUNT(*) > 1;

SELECT course,
       AVG(age) AS average_age
FROM student
GROUP BY course
HAVING AVG(age) > 18;

SELECT course,
       MAX(age) AS oldest_age
FROM student
GROUP BY course
HAVING MAX(age) > 20;