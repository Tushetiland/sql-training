-- 15. იპოვე თანამშრომლები, რომელთა salary მეტია კომპანიის საშუალო salary-ზე.
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);