/* Write your T-SQL query statement below */
SELECT name from Customer
WHERE NOT referee_id = 2 OR referee_id IS NULL;