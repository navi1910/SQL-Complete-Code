# Right JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        RIGHT JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
ORDER BY d.dept_no;

/* 
Extract a list containing information about all managers' employee number, 
first and last name, department number, and hire date.
Use the old type of join syntax to obtain the result.
*/
SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e,
    dept_manager d
WHERE
    e.emp_no = d.emp_no;
    
/*Select the first and last name, the hire date, and the job title of all employees 
whose first name is "Margareta" and have the last name "Markovitch".*/
SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        RIGHT JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    first_name = 'Margareta'
        AND last_name = 'Markovitch';
