# JOIN more than 2 tables
SELECT 
    e.first_name, e.last_name, m.from_date, e.hire_date, d.dept_no, d.dept_name
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    employees e ON m.emp_no = e.emp_no
    ORDER BY m.from_date;
    
/*Select all managers' first and last name, hire date, job title,
 start date, and department name.*/
 SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON d.dept_no = m.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
ORDER BY m.from_date;