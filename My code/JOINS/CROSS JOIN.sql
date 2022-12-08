# Cross join
SELECT 
    d.*, m.*
FROM
    departments d
        CROSS JOIN
    dept_manager m
WHERE
    d.dept_no != m.dept_no;
    
SELECT 
    d.*, m.*
FROM
    departments d,
    dept_manager m;

SELECT 
    d.*, m.*
FROM
    departments d
        CROSS JOIN
    dept_manager m
        JOIN
    employees e ON m.emp_no = e.emp_no
WHERE
    d.dept_no != m.dept_no;

/*Use a CROSS JOIN to return a list 
with all possible combinations between managers from the dept_manager table and 
department number 9.*/
SELECT 
    m.*, d.*
FROM
    dept_manager m
        CROSS JOIN
    departments d
WHERE
    m.dept_no = 'd009'
        AND m.dept_no = d.dept_no
;