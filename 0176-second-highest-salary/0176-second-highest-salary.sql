/* Write your T-SQL query statement below */
SELECT MAX(salary) As SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);