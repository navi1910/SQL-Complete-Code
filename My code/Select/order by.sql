# Order by
USE employees;
SELECT 
    *
FROM
    employees
ORDER BY first_name;

SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name ASC; # all first names ordered by their last names

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no;

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;