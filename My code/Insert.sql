# Insert
USE employees;
SELECT 
    *
FROM
    employees
LIMIT 10;

INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_data) 
VALUES (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    departments_dup;
    
INSERT INTO departments_dup(dept_no, dept_name)
SELECT * FROM departments;

SELECT 
    *
FROM
    departments;

SELECT 
    *
FROM
    titles
LIMIT 10;

INSERT INTO titles(emp_no, title, from_date)
VALUES (999903, 'Senior Engineer', '1997-10-01');

INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date)
VALUES (999903, 'd005','1997-10-01', '9999-01-01');

/*Create a new department called "Business Analysis". Register it under number "d010".
Hint: To solve this exercise, use the "departments" table. */

insert into  departments (dept_no, dept_name)
values ('d010', 'Business Analysis');



