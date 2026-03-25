-- 12. employees და departments დააჯოინე და აჩვენე employee_name + department_name.
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id =d.id;
