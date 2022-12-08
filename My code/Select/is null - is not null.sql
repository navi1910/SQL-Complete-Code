# is not null - is null
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;