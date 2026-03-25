-- 19. იპოვე department, სადაც ყველაზე მეტი თანამშრომელია.
SELECT d.department_name, COUNT(*) AS employees_count
FROM employees e 
JOIN departments d ON e.department_id = d.id
ORDER BY COUNT(*) DESC
LIMIT 1;
