-- 1
SELECT *
FROM employees;

-- 2
SELECT employee_name, salary
FROM employees;

-- 3
SELECT *
FROM employees
WHERE salary > 3000;

-- 4
SELECT *
FROM employees
WHERE employee_name LIKE 'G%';

-- 5
SELECT *
FROM employees
ORDER BY salary DESC;

-- 6
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 7
SELECT *
FROM employees
WHERE department_id IS NULL;

-- 8
SELECT COUNT(*) AS total_employees
FROM employees;

-- 9
SELECT AVG(salary) AS avg_salary
FROM employees;

-- 10
SELECT department_id, COUNT(*) AS employees_count
FROM employees
GROUP BY department_id;

-- 11
SELECT department_id, COUNT(*) AS employees_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 3;

-- 12
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

-- 13
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.id
WHERE d.department_name = 'IT';

-- 14
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name = 'IT'
);

-- 15
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 16
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.department_name
HAVING AVG(e.salary) > 3000;

-- 17
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 18
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.department_name
ORDER BY AVG(e.salary) DESC
LIMIT 1;

-- 19
SELECT d.department_name, COUNT(*) AS employees_count
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.department_name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 20
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE department_id IS NOT NULL
    GROUP BY department_id
    HAVING MIN(salary) > 2000
);
