# like and not like
# To find patterns
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar%');

