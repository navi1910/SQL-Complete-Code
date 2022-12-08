# With input parameter
DROP PROCEDURE IF EXISTS emp_salary;
DELIMITER $$
CREATE PROCEDURE emp_salary(IN p_emp_no INT)
 BEGIN
			SELECT e.first_name, e.last_name, s.salary, s.from_date, s.to_date
            FROM employees e
            JOIN salaries s ON e.emp_no = s.emp_no
            WHERE e.emp_no = p_emp_no;
 END$$
DELIMITER ;

CALL employees.emp_salary(110039);

DROP PROCEDURE IF EXISTS emp_avg_salary;
DELIMITER $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INT)
 BEGIN
			SELECT e.first_name, e.last_name, AVG(salary)
            FROM employees e
            JOIN salaries s ON e.emp_no = s.emp_no
            WHERE e.emp_no = p_emp_no;
 END$$
DELIMITER ;

CALL employees.emp_avg_salary(110039);

CALL emp_salary(110039);