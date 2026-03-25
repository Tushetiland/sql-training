-- 10. აჩვენე თითო department_id-ზე რამდენი თანამშრომელია.
SELECT department_id, COUNT(*) AS employees_count
FROM employees
GROUP BY department_id;