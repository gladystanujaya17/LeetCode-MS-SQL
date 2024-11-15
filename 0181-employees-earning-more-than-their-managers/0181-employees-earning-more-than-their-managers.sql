/* Write your T-SQL query statement below */
SELECT em.name AS Employee
FROM employee em
JOIN employee mgr ON mgr.id = em.managerId
WHERE mgr.salary < em.salary;