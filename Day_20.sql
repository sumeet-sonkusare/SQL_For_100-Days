--Write a SQL query to get the second highest salary from the Employee table. (Without Window Function)
--https://leetcode.com/problems/second-highest-salary/

--Way 1
SELECT Salary AS SecondHighestSalary FROM 
(SELECT
    Salary
FROM
    Employee
ORDER BY Salary DESC
LIMIT 2)salary
ORDER BY Salary
LIMIT 1;

--Way 2
SELECT MIN(Salary) AS SecondHighestSalary FROM 
(SELECT
    Salary
FROM
    Employee
ORDER BY Salary DESC
LIMIT 2)salary;

--Way 3
SELECT 
    MAX(Salary) AS SecondHighestSAlary
FROM 
    Employee
WHERE 
    Salary < (SELECT MAX(Salary) FROM Employee);
