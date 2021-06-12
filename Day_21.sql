--Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
FirstName, LastName, City, State
--https://leetcode.com/problems/combine-two-tables/

SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonID = Address.PersonID
