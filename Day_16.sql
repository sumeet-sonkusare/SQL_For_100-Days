--Generate a report containing three columns: Name, Grade and Mark. Dont include NAMES of those students who received a grade lower than 8. 
--The report must be in descending order by grade -- i.e. higher grades are entered first. 
--If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. 
--Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. 
--If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

--https://www.hackerrank.com/challenges/the-report/problem

SELECT
    CASE
    WHEN Grade>7 THEN Name
    ELSE "NULL"
    END AS Names,
    Grades.Grade,
    Students.Marks
FROM
    Students
    JOIN
    Grades
    ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC,
         Students.Name
         Students.Marks;
