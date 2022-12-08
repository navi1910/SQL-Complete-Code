# Aggregate functions using JOINS
SELECT 
    e.gender, AVG(salary)
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY e.gender;