--Write a query to output the names of those students whose best friends got offered a higher salary than them. 
--Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

--https://www.hackerrank.com/challenges/placements/problem

SELECT Student_Name
FROM (SELECT
    Students.ID AS Student_ID, Students.Name AS Student_Name,
    CASE WHEN Friends.ID THEN P1.Salary END AS Student_Salary,
    Friends.Friend_ID AS Friend_ID,
    CASE WHEN Friends.Friend_ID THEN P2.Salary END AS Friend_Salary
FROM
    Students
    JOIN Friends
    ON Students.ID = Friends.ID
    JOIN Packages P1
    ON Students.ID = P1.ID
    JOIN Packages P2
    ON Friends.Friend_ID = P2.ID)salary
WHERE Friend_Salary > Student_Salary
ORDER BY Friend_Salary;
