use employees;
#UNION vs UNION ALL
## union all will include duplicates whereas union will only include distinct values.
drop table if exists employees_dup;

CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender ENUM('M', 'F'),
    hire_date DATE
);

insert into employees_dup
select * from employees limit 20; 

SELECT 
    *
FROM
    employees_dup
ORDER BY emp_no;

insert into employees_dup
values (10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    NULL AS dept_no,
    NULL AS dept_name
FROM
    employees_dup e 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    NULL AS hire_date,
    d.dept_no,
    d.dept_name
FROM
    departments d;

-- Assignment problem
# UNION vs UNION ALL - solution
SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY - a.emp_no DESC;

