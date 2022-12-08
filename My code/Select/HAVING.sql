# Having 
# helps get conditions
USE employees;
SELECT 
    *
FROM
    employees
HAVING
    first_name LIKE ('E%');
SELECT 
    *
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;