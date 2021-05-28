-- 1. Query a count of the number of cities in CITY having a Population larger than 100,000
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

SELECT
    COUNT(NAME)
FROM
    CITY
WHERE
    POPULATION > 100000;

-- 2. Query the total population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

SELECT
    SUM(POPULATION)
FROM 
    CITY
WHERE 
    DISTRICT = 'California';

--3. Query the average population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?h_r=next-challenge&h_v=zen

SELECT
    AVG(POPULATION)
FROM 
    CITY
WHERE 
    DISTRICT = 'California';

-- 4. Query the average population for all cities in CITY, rounded down to the nearest integer.
-- https://www.hackerrank.com/challenges/average-population/problem

SELECT
    ROUND(AVG(POPULATION))
FROM 
    CITY;

-- 5. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japan-population/problem?h_r=next-challenge&h_v=zen

SELECT 
    SUM(POPULATION)
FROM 
    CITY
WHERE 
    COUNTRYCODE = 'JPN';
