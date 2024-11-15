/* Write your T-SQL query statement below */
WITH dept_salary AS (
    SELECT
        d.name AS Department,
        e.name AS Employee, 
        e.salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS salaryRank
    FROM Employee e
    INNER JOIN Department d ON e.departmentId = d.id
)

SELECT Department, Employee, Salary
FROM dept_salary
WHERE salaryRank <= 3;