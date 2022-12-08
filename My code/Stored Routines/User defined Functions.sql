# User defined functions
USE employees;
DROP FUNCTION IF EXISTS f_emp_avg_salary;
DELIMITER $$
CREATE FUNCTION f_emp_avg_salary(p_emp_no INT) RETURNS DECIMAL(10,2)
NO SQL
BEGIN 
DECLARE v_avg_salary DECIMAL(10,2);
		SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no;
RETURN v_avg_salary;
END$$
DELIMITER ;

SELECT f_emp_avg_salary(110039);

/*Create a function called "emp_info" that takes for parameters the first and last name 
of an employee, and returns the salary from the newest contract of that employee.

Hint: In the BEGIN-END block of this program, you need to declare and use two variables - 
v_max_from_date that will be of the DATE type, and v_salary, that will be of the DECIMAL (10,2) 
type.

Finally, select this function.*/

DROP FUNCTION IF EXISTS emp_info;
DELIMITER $$
CREATE FUNCTION emp_info(p_firstname varchar(20), p_lastname varchar(20)) RETURNS DECIMAL(10,2)
NO SQL
BEGIN
DECLARE max_date DATE;
DECLARE v_salary DECIMAL(10,2);

SELECT 
    MAX(s.from_date)
INTO max_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
        
SELECT 
    MAX(s.from_date), s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_firstname
        AND e.last_name = p_lastname
        AND s.from_date = max_date;
RETURN v_salary;
END $$
DELIMITER ;

SELECT emp_info('Aruna',"Journel");

select max(s.from_date), s.salary
from employees e 
join salaries s on e.emp_no = s.emp_no
where e.first_name = "Aruna" and e.last_name = 'Journel';
