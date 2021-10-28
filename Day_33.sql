--Q-1. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’. 
SELECT *
FROM worker
WHERE FIRST_NAME LIKE '%a%';

--Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT *
FROM worker
WHERE FIRST_NAME LIKE '%a';

--Q-3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT *
FROM worker
WHERE FIRST_NAME LIKE '_____h';

--Q-4. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT *
FROM worker
WHERE SALARY between 100000 AND 500000;

SELECT * 
FROM worker
WHERE SALARY >= 100000 AND SALARY <= 500000;

--Q-5. Write an SQL query to print details of the Workers who have joined in Feb’2014.
SELECT *
FROM worker
WHERE year(JOINING_DATE) = 2014 AND month(JOINING_DATE) = 2;
