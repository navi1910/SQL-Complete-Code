# COALESCE
SELECT 
    dept_no, COALESCE(dept_name, 'name not provided') AS dept_name
FROM
    departments; 

ALTER TABLE departments
ADD COLUMN dept_manager varchar(10);

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments
ORDER BY dept_name ASC;

SELECT 
    dept_no, dept_name, COALESCE('dept_manager') AS new_col
FROM
    departments
ORDER BY dept_name ASC;