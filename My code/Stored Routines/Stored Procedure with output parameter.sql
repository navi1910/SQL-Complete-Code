# Stored Procedure with Output function
USE employees;
DROP PROCEDURE if exists emp_avg_salary_out;

DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INT, OUT p_avg_salary DECIMAL(10,2))
BEGIN 
		SELECT AVG(s.salary)
        INTO p_avg_salary FROM salaries s
        JOIN employees e on e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no;
END $$
DELIMITER ;

/*Create a procedure called "emp_info" that uses as parameters the first and the 
last name of an individual, and returns their employee number.*/

DROP PROCEDURE IF EXISTS emp_info;
DELIMITER $$
CREATE PROCEDURE emp_info(IN p_emp_first varchar(20),IN p_emp_last varchar(20), OUT o_emp_no INT) 
BEGIN
		select e.emp_no
        INTO o_emp_no
        from employees e
        where e.first_name = p_emp_first and e.last_name = p_emp_last;
END $$
DELIMITER ;

