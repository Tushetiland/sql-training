-- 13. იპოვე ყველა თანამშრომელი IT დეპარტამენტიდან JOIN-ით.
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id =d.id
WHERE d.department_name = 'IT';
