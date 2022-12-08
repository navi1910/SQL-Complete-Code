# INNER JOIN
SELECT 
    m.emp_no,
    m.dept_no,
    m.from_date,
    m.to_date,
    d.dept_no,
    d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
order by m.dept_no;