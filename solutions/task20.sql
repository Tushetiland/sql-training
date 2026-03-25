-- 20. იპოვე თანამშრომლები იმ department-ებიდან, სადაც minimum salary > 2000.
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE department_id IS NOT NULL
    GROUP BY department_id
    HAVING MIN(salary) > 2000
);

SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.id
WHERE e.department_id IN (
    SELECT department_id
    FROM employees
    WHERE department_id IS NOT NULL
    GROUP BY department_id
    HAVING MIN(salary) > 2000
);