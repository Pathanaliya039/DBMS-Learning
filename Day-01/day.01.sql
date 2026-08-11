CREATE DATABASE dbms_learning;

USE dbms_learning;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT ,
  course VARCHAR(50)
  );
  
  INSERT INTO student (id,name,age,course)
  VALUES
  (1,'Aliya',19,'BCS'),
  (2,'Sara',20,'BCS'),
  (3,'Ayesha',19,'BCS');
  
  SELECT * FROM student;
  
  SELECT name, age 
  FROM student;
  
  SELECT * FROM student WHERE id = 2;
  
  SELECT * FROM student WHERE age = 19;
  
  SELECT * FROM student ORDER BY age ASC;
  
  SELECT * FROM student ORDER BY age DESC;
  
  UPDATE student SET age =21 WHERE id = 2;
  
  SELECT * FROM student;
  
  DELETE FROM student WHERE id = 3;
  
  SELECT * FROM student;
  
  INSERT INTO student (id, name, age ,course)
  VALUE (4, 'Rahul',20,'BCS');
  
  SELECT * FROM student;
  
  SELECT * FROM student 
  WHERE age = 21;
  
  SELECT * FROM student 
  WHERE age> 19;
  
  SELECT * FROM student 
  WHERE age<21;
  
  SELECT * FROM student 
  WHERE age >= 20;
  
  SELECT * FROM student 
  WHERE age <= 20;
  
  SELECT * FROM student 
  WHERE age>= 20 AND course = 'BCS';
  
  SELECT * FROM student 
  WHERE age = 19 OR age = 21;
