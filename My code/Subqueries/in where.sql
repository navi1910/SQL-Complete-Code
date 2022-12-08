USE employees;
# Subqueries in WHERE
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);

# inner query
SELECT 
    dm.emp_no
FROM
    dept_manager dm;

/*Extract the information 
about all department managers who were hired between the 1st of January 1990 and the 
1st of January 1995.*/
SELECT 
    dm.emp_no, e.first_name, e.last_name
FROM
    dept_manager dm
        JOIN
    employees e ON e.emp_no = dm.emp_no
WHERE
    e.hire_date IN (SELECT 
            e.hire_date
        FROM
            employees e
        WHERE
            e.hire_date BETWEEN '1990-01-01' AND '1995-01-01');
