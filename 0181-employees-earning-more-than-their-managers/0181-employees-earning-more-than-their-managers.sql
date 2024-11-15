/* Write your T-SQL query statement below */
SELECT em2.name AS Employee
FROM employee em2
JOIN employee em1 ON em1.id = em2.managerId
WHERE em1.salary < em2.salary;