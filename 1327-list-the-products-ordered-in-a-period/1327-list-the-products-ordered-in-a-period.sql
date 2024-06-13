/* Write your T-SQL query statement below */
SELECT Products.product_name, SUM(Orders.unit) AS unit
FROM Products
LEFT JOIN Orders ON Orders.product_id = Products.product_id
WHERE YEAR(Orders.order_date) = 2020 AND MONTH(Orders.order_date) = 02
GROUP BY Products.product_name
HAVING SUM(Orders.unit) >= 100
ORDER BY unit DESC;