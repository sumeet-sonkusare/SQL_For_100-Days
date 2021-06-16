--Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.
--https://leetcode.com/problems/customers-who-never-order/
Customers	
+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+

Orders
+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+



SELECT 
    Name AS Customers
FROM 
    Customers
LEFT JOIN 
    Orders
ON 
    Customers.Id = Orders.CustomerId
WHERE 
    CustomerId IS NULL;
    
Output
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
