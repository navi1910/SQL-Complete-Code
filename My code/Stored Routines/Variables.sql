# Variables
SET @v_avg_salary = 0;
CALL employees.emp_avg_salary_out(110039, @v_avg_salary) ;
SELECT @v_avg_salary;

SET @o_emp_no = 0;
CALL employees.emp_info('Aruna', 'Journel', @o_emp_no);
SELECT @o_emp_no;