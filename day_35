--Q-1. Write an SQL query to show only odd rows from a table.
SELECT *
FROM worker
WHERE mod(WORKER_ID,2) = 1

--Q-2. Write an SQL query to show only even rows from a table.
SELECT *
FROM worker
WHERE mod(WORKER_ID,2) = 0

--Q-3. Write an SQL query to clone a new table from another table.
CREATE TABLE New_Worker LIKE Worker;

INSERT INTO New_Worker
SELECT * FROM worker;

--Q-4. Write an SQL query to fetch Union records of two tables.
SELECT * FROM Worker
Union
SELECT * FROM New_worker

--Q-5. Write an SQL query to show records from one table that another table does not have.
 SELECT * FROM Worker
WHERE WORKER_ID NOT IN (
						SELECT WORKER_REF_ID FROM Title
                        );
