/* Write your T-SQL query statement below */
SELECT DISTINCT s.name AS NAME
FROM SalesPerson s
WHERE NOT EXISTS (SELECT * 
                    FROM Orders o
                    JOIN Company c ON c.com_id = o.com_id
                    WHERE c.name = 'RED' AND s.sales_id = o.sales_id)