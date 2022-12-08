# Operator Precedence 
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'kellie'
        OR first_name = 'Aruna');