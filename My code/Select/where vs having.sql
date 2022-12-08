# where vs having
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;
/*
Select the employee numbers of all individuals who have signed more
than 1 contract after the 1st of January 2000.
Hint: To solve this exercise, use the "dept_emp" table.
*/
SELECT 
    emp_no
FROM
    dept_emp
where from_date > '2000-01-01'
GROUP BY dept_no
having count(dept_no) > 1;