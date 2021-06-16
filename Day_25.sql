--https://leetcode.com/problems/department-highest-salary/

Write a SQL query to find employees who have the highest salary in each of the departments. 
For the above tables, your SQL query should return the following rows (order of rows does not matter).

The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.
+----+-------+--------+--------------+ 
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+

The Department table holds all departments of the company.
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+

SELECT 
    Department.Name AS Department, 
    department_max_sal.Name AS Employee, 
    department_max_sal.M_Sal AS Salary 
FROM
    (
        SELECT 
            Name, m.M_Sal, 
            m.DepartmentId AS sal
        FROM 
            Employee
        JOIN(
            SELECT 
                Max(Salary) AS M_Sal, 
                DepartmentId
            FROM 
                Employee
            GROUP BY 
                DepartmentId
            )m
        ON Employee.Salary=m.M_Sal
    ) department_max_sal
JOIN Department
ON department_max_sal.sal = Department.Id


Output
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
