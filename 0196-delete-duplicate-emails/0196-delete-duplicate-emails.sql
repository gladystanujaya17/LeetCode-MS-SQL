/* Write your T-SQL query statement below */
DELETE p
FROM Person p, Person q
WHERE p.id>q.id 
AND q.Email=p.Email;