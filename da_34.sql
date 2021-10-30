--Q-1. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(*)
FROM worker
WHERE DEPARTMENT = 'Admin';

--Q-2. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS Worker_Name, SALARY
FROM worker
WHERE SALARY BETWEEN 50000 AND 100000;

--Q-3. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT DEPARTMENT, COUNT(DEPARTMENT)
FROM worker
GROUP BY 1
ORDER BY COUNT(DEPARTMENT) DESC;

--Q-4. Write an SQL query to print details of the Workers who are also Managers.
SELECT w.FIRST_NAME, t.WORKER_TITLE
FROM worker AS w
INNER JOIN title AS t
ON w.WORKER_ID = t.WORKER_REF_ID
WHERE t.WORKER_TITLE = 'Manager';

--Q-5. Write an SQL query to find Duplicate columns in table Title
 SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;
