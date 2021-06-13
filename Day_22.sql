--Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
--The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.
--https://leetcode.com/problems/employees-earning-more-than-their-managers/

+----+-------+--------+-----------+
| Id | Name  | Salary | ManagerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |
+----+-------+--------+-----------+

SELECT Employee
FROM
    (
        SELECT NAME AS Employee, Salary As Employee_Salary, ManagerId
        FROM Employee)E
    JOIN
    (
        SELECT NAME AS Manager_Name, Salary As Manager_Salary, Id AS ManagerId
        FROM Employee)M
    ON E.ManagerId = M.ManagerId
WHERE E.Employee_Salary > M.Manager_Salary ;
