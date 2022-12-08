# sys-functions
SELECT sysdate();

SELECT date_format(sysdate(), 'y%-m%-d%') as today;

CREATE TRIGGER trig_ins_dept_mng
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN 
	DECLARE v_curr_salary INT;
    
SELECT
		MAX(salary)
INTO v_curr_salary FROM
		salaries
WHERE
	emp_no = NEW.emp_no;
    IF v_curr_salary IS NOT NULL THEN
    UPDATE salaries
    SET 
    to_date = SYSDATE()
    WHERE 
    emp_no = NEW.emp_no and to_date = NEW.to_date;
    INSERT INTO salaries
		values(NEW.emp_no, v_curr_salary+20000, NEW.from_date, NEW.to_date);
	END IF;
END$$
DELIMITER $$
    



