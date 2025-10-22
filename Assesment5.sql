
CREATE DATABASE Assesment5;
USE Assesment5;

CREATE TABLE student_info (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT
);

CREATE TABLE department_info (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO student_info VALUES (1, 'Alice', 101), (2, 'Bob', 102), (3, 'Charlie', 103), (4, 'David', NULL);
INSERT INTO department_info VALUES (101, 'Computer Science'), (102, 'Mathematics'), (103, 'Physics'), (104, 'Chemistry');

SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
INNER JOIN department_info d ON s.department_id = d.department_id;

SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
LEFT JOIN department_info d ON s.department_id = d.department_id;

SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
RIGHT JOIN department_info d ON s.department_id = d.department_id;

SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
LEFT JOIN department_info d ON s.department_id = d.department_id
UNION
SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
RIGHT JOIN department_info d ON s.department_id = d.department_id;

SELECT s.student_id, s.student_name, d.department_name
FROM student_info s
CROSS JOIN department_info d;
