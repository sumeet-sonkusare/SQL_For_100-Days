--Write a SQL query to find all duplicate emails in a table named Person.
--https://leetcode.com/problems/duplicate-emails/submissions/

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

SELECT 
    Email
FROM (
        SELECT 
            Email, COUNT(Email)
        FROM 
            Person
        GROUP BY 
            Email
        HAVING 
            COUNT(Email)>1
     ) Dup_Email;
