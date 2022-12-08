USE employees;

# Views 
CREATE OR REPLACE VIEW v_dept_no AS
    SELECT 
        salary
    FROM
        salaries
    WHERE
        salary > 50000;

/*Create a view that will extract the average salary of all managers 
registered in the database. Round this value to the nearest cent. If you have worked correctly, 
after 
executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 66924.27.*/
CREATE OR REPLACE VIEW v_average_salary_managers AS
    SELECT 
        dm.emp_no, ROUND(AVG(salary), 2) AS average_salary
    FROM
        dept_manager dm
            JOIN
        salaries s ON dm.emp_no = s.emp_no
    GROUP BY dm.emp_nov_average_salary_managers;

SELECT 
    *
FROM
    v_average_salary_managers;