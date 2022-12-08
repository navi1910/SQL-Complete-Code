# Tips and Tricks for Joins
SELECT 
    d.dept_name, AVG(s.salary) AS average_salary
FROM
    salaries s
        JOIN
    dept_manager m ON s.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
GROUP BY d.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;

/*How many male and how many female managers do we have in the "employees" database?*/
SELECT 
    e.gender, COUNT(gender) AS count_of_employees
FROM
    employees e
        RIGHT JOIN
    dept_manager m ON e.emp_no = m.emp_no
GROUP BY gender;

