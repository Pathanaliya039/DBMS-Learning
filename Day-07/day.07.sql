--DBMS Day 7
--SQL Constraints and keys
-- PRIMARY KEY:
-- Uniquely identifies each row.
-- Cannot contain NULL values.
-- Example: course_id in test_course.

-- FOREIGN KEY:
-- Creates a relationship between two tables.
-- References a PRIMARY KEY or UNIQUE key in another table.
-- Example: course_id in test_student.
USE dbms_learning;

SELECT * FROM student;

DESCRIBE student;

CREATE TABLE test_primary_key(
      id INT PRIMARY KEY,
      name VARCHAR(50)
);


DESCRIBE test_primary_key;

CREATE TABLE test_not_null(
      id INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      age int
);

DESCRIBE test_not_null;

CREATE TABLE test_unique(
      id INT PRIMARY KEY,
      email VARCHAR(100) UNIQUE
);


DESCRIBE test_unique;

CREATE TABLE test_default(
      id INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      course VARCHAR(50) DEFAULT 'BCS'
);


DESCRIBE test_default;


CREATE TABLE test_check(
      id INT PRIMARY KEY,
      name VARCHAR(50),
      age INT CHECK (age >= 18)
);


DESCRIBE test_check;

DESCRIBE course_details;

CREATE TABLE test_course(
       course_id INT PRIMARY KEY,
       course_name VARCHAR(50) UNIQUE
);


INSERT INTO test_course
VALUES 
(1, 'BCS'),
(2 ,'BCA'),
(3, 'MCA');


CREATE TABLE test_student(
      student_id INT PRIMARY KEY,
      name VARCHAR(50),
      course_id INT,
      FOREIGN KEY (course_id) REFERENCES
test_course(course_id)
);

DESCRIBE test_student;

INSERT INTO test_student (student_id, name, course_id)
VALUES(1, 'Aliya' ,1);


INSERT INTO test_student (student_id, name, course_id)
VALUES(2, 'Sara' ,99);

CREATE TABLE test_constraints(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    course VARCHAR (50) DEFAULT 'BCS',
    age INT CHECK (age >= 18)
);

DESCRIBE test_constraints;

INSERT INTO test_constraints (id,
name, email, age)
VALUES (1,'Aliya', 'aliya@example.com', 19);

SELECT * FROM test_constraints;

INSERT INTO test_constraints (id,
name, email, age)
VALUES (2,'sara', 'aliya@example.com', 20);

INSERT INTO test_constraints (id,
name, email, age)
VALUES (3,'Ayesha', 'ayesha@example.com', 17);

INSERT INTO test_constraints (id,
email, age)
VALUES (4, 'test@example.com',20);

CREATE TABLE employee (
    empoloyee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18)
);

CREATE TABLE department (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(50) UNIQUE
);

CREATE TABLE employee_department(
     employee_id INT PRIMARY KEY,
     employee_name VARCHAR(50) NOT NULL,
     department_id INT,
     FOREIGN KEY (department_id)
          REFERENCES
	department(department_id)
);

SHOW TABLES LIKE 'department';

CREATE TABLE employee_department (
     employee_id INT PRIMARY KEY,
     employee_name VARCHAR(50) NOT NULL,
     department_id INT,
     FOREIGN KEY (department_id)
          REFERENCES
	department(department_id)
);

SHOW CREATE TABLE department;

SELECT DATABASE();

SHOW FULL TABLES LIKE 'department';

CREATE TABLE department (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(50) UNIQUE
);

SHOW CREATE TABLE department;

CREATE TABLE department (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(50) UNIQUE
);

CREATE TABLE employee_department(
     employee_id INT PRIMARY KEY,
     employee_name VARCHAR(50) NOT NULL,
     department_id INT,
     FOREIGN KEY (department_id)
          REFERENCES
	department(department_id)
);

INSERT INTO department (department_id,
department_name)
VALUES 
(1,'IT'),
(2, 'HR'),
(3,'Finance');

INSERT INTO employee_department
(employee_id, employee_name, department_id)
VALUES
(1,'Aliya', 1);

SELECT * FROM employee_department;