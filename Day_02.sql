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
