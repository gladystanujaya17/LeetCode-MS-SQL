/* Write your T-SQL query statement below */
SELECT 
    employee_id,
    CASE
        WHEN name LIKE 'M%' THEN 0
        WHEN employee_id % 2 = 0 THEN 0
        ELSE salary
    END AS bonus
FROM Employees
ORDER BY employee_id ASC;