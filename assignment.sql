-- Create Table
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50),
marks INT
);

-- Insert Data
INSERT INTO students VALUES
(1,'Aryan',21,'Delhi',85),
(2,'Rahul',20,'Mumbai',72),
(3,'Sneha',22,'Pune',90),
(4,'Amit',19,'Delhi',60),
(5,'Neha',21,'Mumbai',88);

-- View Table
SELECT * FROM students;

-- Output
-- id | name  | age | city   | marks
-- 1  | Aryan | 21  | Delhi  | 85
-- 2  | Rahul | 20  | Mumbai | 72
-- 3  | Sneha | 22  | Pune   | 90
-- 4  | Amit  | 19  | Delhi  | 60
-- 5  | Neha  | 21  | Mumbai | 88


-- Query 1
SELECT * FROM students WHERE city='Delhi';

-- Output
-- id | name  | age | city  | marks
-- 1  | Aryan | 21  | Delhi | 85
-- 4  | Amit  | 19  | Delhi | 60


-- Query 2
SELECT name,marks FROM students WHERE marks>80;

-- Output
-- name  | marks
-- Aryan | 85
-- Sneha | 90
-- Neha  | 88


-- Query 3
SELECT * FROM students WHERE age=21;

-- Output
-- id | name  | age | city   | marks
-- 1  | Aryan | 21  | Delhi  | 85
-- 5  | Neha  | 21  | Mumbai | 88


-- Query 4
SELECT * FROM students WHERE city!='Mumbai';

-- Output
-- id | name  | age | city  | marks
-- 1  | Aryan | 21  | Delhi | 85
-- 3  | Sneha | 22  | Pune  | 90
-- 4  | Amit  | 19  | Delhi | 60


-- Query 5
SELECT name FROM students WHERE marks<70;

-- Output
-- name
-- Amit


-- Query 6
SELECT * FROM students WHERE age>20;

-- Output
-- id | name  | age | city   | marks
-- 1  | Aryan | 21  | Delhi  | 85
-- 3  | Sneha | 22  | Pune   | 90
-- 5  | Neha  | 21  | Mumbai | 88


-- Query 7
SELECT name FROM students WHERE city='Pune';

-- Output
-- name
-- Sneha


-- Query 8
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

-- Output
-- id | name  | age | city   | marks
-- 1  | Aryan | 21  | Delhi  | 85
-- 2  | Rahul | 20  | Mumbai | 72
-- 3  | Sneha | 22  | Pune   | 90
-- 5  | Neha  | 21  | Mumbai | 88


-- Query 9
SELECT * FROM students WHERE name LIKE 'A%';

-- Output
-- id | name  | age | city  | marks
-- 1  | Aryan | 21  | Delhi | 85
-- 4  | Amit  | 19  | Delhi | 60


-- Query 10
SELECT * FROM students WHERE city='Delhi' AND marks>70;

-- Output
-- id | name  | age | city  | marks
-- 1  | Aryan | 21  | Delhi | 85
