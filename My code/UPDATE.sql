## Update

USE employees;
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-30',
    gender = 'F'
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    departments_dup;

commit;

UPDATE departments_dup 
SET 
    dept_no = 'dddd',
    dept_name = 'none';

ROLLBACK;

truncate table departments_dup;

    
    