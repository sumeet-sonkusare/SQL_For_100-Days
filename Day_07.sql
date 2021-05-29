--1. Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--The sum of all values in LONG_W rounded to a scale of 2 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-2/problem

SELECT
    ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W), 2)
FROM
    STATION;

--2. Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-13/problem?h_r=next-challenge&h_v=zen

SELECT
    truncate(SUM(LAT_N),4)
FROM
    STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

--3. Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-14/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    truncate(MAX(LAT_N),4)
FROM
    STATION
WHERE LAT_N < 137.2345;

--4. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-15/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT 
    ROUND(LONG_W, 4)
FROM 
    STATION
WHERE 
    LAT_N = (
            SELECT 
                MAX(LAT_N)
            FROM 
                STATION
            WHERE 
                LAT_N < 137.2345
            );
