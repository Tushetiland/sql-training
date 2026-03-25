-- 11. აჩვენე მხოლოდ ის department_id-ები, სადაც თანამშრომლების რაოდენობა > 3.
SELECT department_id, COUNT(*) AS employees_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 3;
