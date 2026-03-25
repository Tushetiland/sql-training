-- 18. იპოვე department, რომელსაც ყველაზე მაღალი average salary აქვს.
SELECT d.department_name, ROUND(AVG(e.salary), 2) AS avg_salary
FROM employees e 
JOIN departments d ON e.department_id = d.id 
GROUP BY d.department_name
ORDER BY avg_salary DESC
LIMIT 1;