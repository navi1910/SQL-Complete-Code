# EXISTS - NOT EXISTS
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no);
/*Select the entire information for all employees whose job title is "Assistant Engineer".
Hint: To solve this exercise, use the 'employees' table.*/
SELECT 
    e.*, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    EXISTS (SELECT 
            t.emp_no
        FROM
            titles t
        WHERE
            t.title = 'Assistant Engineer')
order by t.title;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 10009;

