# delete

DELETE FROM employees 
WHERE
    emp_no = 90099009;
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 90099009;

ROLLBACK;

insert into employees (first_name, emp_no, last_name, gender, hire_date, birth_date)
values ('John', 90099009 , 'Myers', 'M', '2222-01-01', '2000-01-01');

commit;

SELECT 
    *
FROM
    departments;
    
DELETE FROM departments 
WHERE
    dept_no = 'd010';


