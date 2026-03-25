-- 14. იგივე ამოცანა ამოხსენი subquery-ით (`IN`).
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id 
    FROM departments
    where department_name = 'IT'
);
