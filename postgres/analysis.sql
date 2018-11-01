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