--1. Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
  --If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
--https://www.hackerrank.com/challenges/more-than-75-marks/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT 
    Name
FROM
    STUDENTS
WHERE
    Marks > 75
ORDER BY
    RIGHT(Name, 3), ID;

--2 Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
--https://www.hackerrank.com/challenges/name-of-employees/problem
SELECT
    name
FROM
    Employee
ORDER BY 
    name;

--3. Write a query that prints a list of employee names (i.e.: the name attribute) for 
--employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
--https://www.hackerrank.com/challenges/salary-of-employees/problem?h_r=next-challenge&h_v=zen

SELECT
    name
FROM
    Employee
WHERE
    salary > 2000 AND months < 10
ORDER BY
    employee_id;

--4. Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780 . Round your answer to 4 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-16/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    ROUND(MIN(LAT_N),4)
FROM
    STATION
WHERE
    LAT_N >38.7780;
