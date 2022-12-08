# Aggregate Functions
# COUNT
USE employees;
SELECT 
    *
FROM
    employees;

SELECT 
    COUNT(first_name)
FROM
    employees;

SELECT 
    COUNT(DISTINCT from_date)
FROM
    dept_emp;

SELECT 
    COUNT(*)
FROM
    employees;
    
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;

# SUM
SELECT 
    SUM(salary)
FROM
    salaries;

SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01'; 

# MAX and MIN
SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;

# Average - AVG
SELECT 
    AVG(salary)
FROM
    salaries;

# Round
SELECT 
    ROUND(AVG(salary))
FROM
    salaries;

SELECT 
    ROUND(AVG(salary),2)
FROM
    salaries;
