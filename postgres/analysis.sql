--create database statement
CREATE DATABASE analysis;

--create table statement
CREATE TABLE teachers (
	id bigserial,
    first_name varchar(25),
    last_name varchar(50),
    school varchar(50),
    hire_date date,
    salary numeric
);

--insert into teachers table
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
 ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
 ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
 ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
 ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
 ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
 
--*DISTINCT* to find unique values

--query to find DISTINCT schools
SELECT DISTINCT school
FROM teachers;

--Sorting Data with *ORDER BY*
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

--sort two columns asc/desc
SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

--filtering with WHERE
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

--WHERE with BETWEEN
SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 and 65000;

--WHERE with LIKE/ILIKE
SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';
--returns 0

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';
-- returns 2 results

--Combined Operators
SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
	AND (salary < 38000 OR salary > 40000);
    
--All combined
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

--to create an excel output
CREATE TABLE students (
	first_name varchar(20),
    last_name varchar(50),
    reportcard_comments text
);

INSERT INTO students
VALUES
	('Helana', 'Nosrat', 'Social butterfly but very chatty during class.'),
    ('Ryan', 'Belcher', 'Very talented musically, is excelling in music class.');
    
COPY students TO '/Users/helananosrat/workspace/SQL/SQL/postgres/students.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

--numeric data types
CREATE TABLE emotions (
	emotional_score numeric(20,5),
    avg_emotional_score real,
    precise_emotional_score double precision
);

INSERT INTO emotions
VALUES
	(.7, .7, .7),
    (2.13579, 3.13573, 5.13576),
    (2.1357987654, 2.1357987654, 2.1357987654);
    
SELECT * FROM emotions;

