--Q-1. Write an SQL query to fetch three max salaries from a table.
SELECT DISTINCT(SALARY)
FROM worker
ORDER BY SALARY DESC
LIMIT 3;

--Q-2. Write an SQL query to fetch three min salaries from a table.
SELECT DISTINCT(SALARY)
FROM worker
ORDER BY SALARY
LIMIT 3;

--Q-3. Write an SQL query to fetch nth max salaries from a table.
SELECT *
FROM (
		SELECT DISTINCT(SALARY)
		FROM worker
		ORDER BY SALARY DESC
		LIMIT 5) T1
ORDER BY SALARY
LIMIT 1;

--Q-4. Write an SQL query to fetch departments along with the total salaries paid for each of them.
SELECT DEPARTMENT, SUM(SALARY) AS Total_SALARY
FROM worker
GROUP BY 1
ORDER BY 2 DESC;

--Q-5. Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY
FROM worker
WHERE SALARY = (SELECT MAX(SALARY) 
				FROM worker);
