USE employees;
## JOINS

SELECT 
    *
FROM
    departments_dup;

CREATE TABLE dept_manager_dup (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

insert into dept_manager_dup
select * from dept_manager;

alter table departments_dup
change column dept_no dept_no varchar(4), 
change column dept_name dept_name varchar(255);

SELECT count(distinct dept_no)
FROM
    dept_manager_dup;

SELECT 
    *
FROM
    departments_dup;
    
DELETE FROM departments_dup
WHERE  dept_no = 'd010';

