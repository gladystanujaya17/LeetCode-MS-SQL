/* Write your T-SQL query statement below */
SELECT c.customer_id
FROM Customer c
LEFT JOIN Product p ON p.product_key = c.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(p.product_key) FROM Product p);