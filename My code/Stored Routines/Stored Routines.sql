# Stored Routines
USE employees;

DROP PROCEDURE IF EXISTS view_employees;

DELIMITER $$
CREATE PROCEDURE view_employees()
BEGIN 
			SELECT * 
			FROM employees
			LIMIT 1000;
END$$
DELIMITER ;

CALL employees.view_employees();
CALL view_employees();

/*Create a procedure that will provide the average salary of all employees. 
Then, call the procedure.*/
DROP PROCEDURE IF EXISTS average_salary;
DELIMITER $$
CREATE PROCEDURE average_salary()
BEGIN
			SELECT AVG(salary)
            FROM salaries;
END$$
DELIMITER ;

DROP PROCEDURE average_salary;









