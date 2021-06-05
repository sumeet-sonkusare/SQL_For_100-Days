--Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

•	--happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
•	--happens to equal the minimum value in Western Longitude (LONG_W in STATION).
•	--happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
•	--happens to equal the maximum value in Western Longitude (LONG_W in STATION).
---Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

--https://www.hackerrank.com/challenges/weather-observation-station-20/forum/comments/618514

SELECT 
    ROUND(ABS(Lat_Min-Lat_Max) + ABS(Long_Min-Long_Max),4) AS Manhattan_Distance
FROM
    (
        SELECT
            MIN(LAT_N) AS Lat_Min,
            MIN(LONG_W) AS Long_Min,
            MAX(LAT_N) AS Lat_Max,
            MAX(LONG_W) AS Long_Max
        FROM
            STATION
    ) AS Coordinates;
