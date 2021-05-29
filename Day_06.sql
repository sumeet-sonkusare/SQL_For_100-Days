-- 1. Query the difference between the maximum and minimum populations in CITY.
-- https://www.hackerrank.com/challenges/population-density-difference/problem

SELECT
    MAX(POPULATION)-MIN(POPULATION)
FROM CITY;

--2. Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
--but did not realize her keyboard's 0 key was broken until after completing the calculation. 
--She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

--Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.
--https://www.hackerrank.com/challenges/the-blunder/problem?h_r=next-challenge&h_v=zen

SELECT
    CEIL(AVG(Salary)-AVG(REPLACE(Salary,0,'')))
FROM
    EMPLOYEES;

--3. We define an employee's total earnings to be their monthly (salary x months) worked, 
--and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
--Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
--Then print these values as  space-separated integers.
--https://www.hackerrank.com/challenges/earnings-of-employees/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    (salary * months) AS 'Total Earning', COUNT('Total Earning')
FROM
    Employee
GROUP BY 1
ORDER BY 1 DESC
LIMIT 1;
