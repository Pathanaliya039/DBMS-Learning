-- DBMS Day 3
--SQL String and Numeric Functions
USE dbms_learning;

SELECT UPPER(name) AS student_name
FROM student;

SELECT LOWER(name) AS student_name
FROM student;

SELECT name, LENGTH(name) AS
name_length
FROM student;

SELECT CONCAT(name,'-', course) AS
student_info
FROM student;

SELECT TRIM(name) AS cleaned_name
FROM student;

SELECT ROUND(AVG(age),2) AS
average_age
FROM student;

SELECT UPPER(name) AS student_name,
	   LOWER(course) AS course_name
FROM student;

SELECT CONCAT(UPPER(name),'-',
UPPER(course)) AS student_info
FROM student;

SELECT name, CHAR_LENGTH(name) AS
character_count
FROM student;

SELECT name, REPLACE(course,'BCS',
'BCA') AS update_course
FROM student;

SELECT name, LEFT(name,2) as
first_two
FROM student;

SELECT name, RIGHT(name,2) as
last_two
FROM student;

SELECT name, SUBSTRING(name,1,3) as
short_name
FROM student;

SELECT CONCAT(SUBSTRING(name, 1, 3),'
-', course) AS student_info
FROM student;

SELECT name, REVERSE(name) as
reverse_name
FROM student;

SELECT id ,LPAD(id, 3, '0') AS
formatted_id
FROM student;

SELECT RPAD(name, 10,'.') AS
formatted_name
FROM student;

SELECT TRUNCATE(20.9876, 2) as
truncate_value;

SELECT ROUND(20.9876, 2) AS
rounded_value;


SELECT UPPER(name) AS student_name,
       LOWER(course) AS course_name,
       LENGTH(name) AS name_length
FROM student;

SELECT name,
	   LEFT(name,3) AS first_three,
       RIGHT(name,2) AS last_two,
       REVERSE(name) AS reversed_name
FROM student;

SELECT name,
	   LPAD(id, 3 , '0') AS
formatted_id,
       UPPER(name) AS student_name,
       LENGTH(name) AS name_length
FROM student;

DESCRIBE student;