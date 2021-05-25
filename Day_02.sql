--1. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY REGEXP '^(a|e|i|o|u)'
    AND
    CITY REGEXP '(a|e|i|o|u)$';

--ANOTHER APPROACH

SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY REGEXP '^[aeiou]'
    AND
    CITY REGEXP '[aeiou]$';

--2. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-9/problem?h_r=next-challenge&h_v=zen

SELECT 
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY REGEXP '^[^aeiou]';

--3. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-10/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    CITY REGEXP '[^aeiou]$';

--4. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-11/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    DISTINCT(CITY)
FROM 
    STATION
WHERE
    CITY REGEXP '^[^aeiou] | [^aeiou]$';
    
--5. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-12/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
SELECT
    DISTINCT(CITY)
FROM 
    STATION
WHERE
    CITY REGEXP '^[^aeiou]' 
    AND 
    CITY REGEXP '[^aeiou]$';
