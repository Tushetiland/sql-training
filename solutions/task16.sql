-- 16. იპოვე departments, სადაც average salary > 3000.
SELECT d.department_name, AVG(e.salary) as avg_salary
FROM employees e 
JOIN departments d ON e.department_id=d.id
GROUP BY d.department_name
HAVING AVG(e.salary) > 3000;