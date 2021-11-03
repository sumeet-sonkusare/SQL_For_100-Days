--Q-1. Write an SQL query to show the current date and time.
select CURRENT_DATE(), CURRENT_TIME(), NOW();

--Q-2. Write an SQL query to show the top 10 salary records of a table.
SELECT * 
FROM worker
ORDER BY SALARY DESC
LIMIT 10;

--Q-3. Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT SALARY 
FROM (SELECT DISTINCT SALARY FROM worker order by salary desc LIMIT 4) T1
ORDER BY SALARY
LIMIT 1;

--Q-4. Write an SQL query to fetch the list of employees with the same salary.
SELECT W1.WORKER_ID, W1.FIRST_NAME, W1.SALARY
FROM WORKER W1, WORKER W2
WHERE W1.SALARY = W2.SALARY AND W1.WORKER_ID != W2.WORKER_ID
