# Aggregate functions
USE employees;
SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= 100000;

SELECT 
    COUNT(*)
FROM
    titles
WHERE
    title = 'manager';

