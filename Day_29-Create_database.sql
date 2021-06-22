--1. Create a database ‘workplace’ and make it default database

CREATE DATABASE ORG;

USE ORG;

--2. Create new table called ‘Worker’. 
--Add columns as follows WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE and DEPARTMENT. 
--With their datatypes as follows integer, char, char, integer, datetime, char. Note: WORKER_ID must be not null and Unique (Primary key with value increment).

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
 );
  
  
--3. Create new table called ‘Bonus’. 
--Add columns as follows WORKER_REF_ID, BONUS_AMOUNT, BONUS DATE.
--With their datatypes as follows integer, char, datetime. 
--Note: Make WORKER_REF_ID a foreign key of WORKER_ID in Worker table.
 
 CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

--4.	Create new table called ‘Title’. 
--Add columns as follows WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM.
--With their datatypes as follows integer, char, datetime. 
--Note: Make WORKER_REF_ID a foreign key of WORKER_ID in Worker table.

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
