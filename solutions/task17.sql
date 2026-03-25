-- 17. იპოვე თანამშრომლები, რომელთა salary მეტია საკუთარი department-ის საშუალოზე.
SELECT *
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    where department_id = e.department_id
);
