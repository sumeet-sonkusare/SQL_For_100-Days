--https://www.hackerrank.com/challenges/weather-observation-station-7/problem?h_r=next-challenge&h_v=zen

-- (1) Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT 
    DISTINCT(CITY)
FROM 
    STATION
WHERE 
    CITY LIKE '%a' OR
    CITY LIKE '%e' OR
    CITY LIKE '%i' OR
    CITY LIKE '%o' OR
    CITY LIKE '%u';

-- (2) Query the list of CITY names starting with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-6/problem?h_r=next-challenge&h_v=zen

SELECT 
    DISTINCT(CITY)
FROM 
    STATION
WHERE 
    CITY LIKE 'a%' OR
    CITY LIKE 'e%' OR
    CITY LIKE 'i%' OR
    CITY LIKE 'o%' OR
    CITY LIKE 'u%';
    
-- (3) Query the list of CITY names starting and ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-8/problem?h_r=next-challenge&h_v=zen
SELECT 
    DISTINCT(CITY)
FROM 
    STATION
WHERE 
     LEFT (CITY,1) IN ('A', 'E', 'I', 'O', 'U')
     AND
     RIGHT (CITY,1) IN ('A', 'E', 'I', 'O', 'U');

--(4) Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
--https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT
    DISTINCT(CITY)
FROM 
    STATION
WHERE LEFT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u');
