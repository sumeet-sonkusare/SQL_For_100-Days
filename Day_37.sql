--Q-1. Write an SQL query to show all departments along with the number of people in there.
SELECT DEPARTMENT, count(DEPARTMENT) As No_of_workers
FROM worker
GROUP BY DEPARTMENT
ORDER BY No_of_workers DESC;

--Q-2. Write an SQL query to show the last record from a table.
SELECT *
FROM worker
ORDER BY WORKER_ID DESC
LIMIT 1;

--Q-3. Write an SQL query to fetch the first row of a table.
SELECT *
FROM worker
LIMIT 1;

Q-4. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT w1.DEPARTMENT, concat(w1.FIRST_NAME, " ", w1.LAST_NAME), w1.SALARY 
FROM worker w1
JOIN (
select DEPARTMENT,max(SALARY) as max_salary
FROM worker
GROUP BY DEPARTMENT) w2
ON (w1.DEPARTMENT = w2.DEPARTMENT) AND (w1.SALARY = w2.max_salary)
ORDER BY DEPARTMENT;
