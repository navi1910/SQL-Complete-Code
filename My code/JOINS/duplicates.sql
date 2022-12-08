USE employees;

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

INSERT INTO dept_manager_dup 
values (110228,'d003', '1992-03-21', '9999-01-01');

DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';

DELETE FROM dept_manager_dup 
WHERE
    emp_no = 110228;

SELECT 
    *
FROM
    departments_dup d
        JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
GROUP BY emp_no
ORDER BY m.dept_no;
    