--Q-1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
Select FIRST_NAME 
from worker
order by FIRST_NAME;

--Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
Select *
from worker
order by FIRST_NAME, DEPARTMENT desc;

--Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT *
FROM worker
WHERE FIRST_NAME IN ('Vipul', 'Satish');

--Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT *
FROM worker
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
SELECT * 
FROM worker
WHERE DEPARTMENT = 'Admin';
