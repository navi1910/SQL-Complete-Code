# IFNULL
SELECT 
    dept_no, IFNULL(dept_name, 'name not provided') AS dept_name
FROM
    departments;