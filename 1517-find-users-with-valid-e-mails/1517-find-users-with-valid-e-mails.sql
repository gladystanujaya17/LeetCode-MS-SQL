/* Write your T-SQL query statement below */
SELECT 
    user_id,
    name,
    mail
FROM Users
WHERE mail LIKE '[a-zA-Z]%@leetcode.com' AND mail NOT LIKE '%[#%^$!&*()+=@]%@leetcode.com'
