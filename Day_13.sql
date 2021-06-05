--Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
----and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
----Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
--https://www.hackerrank.com/challenges/weather-observation-station-19/problem


SELECT 
    ROUND(SQRT(POWER(Lat_Dist, 2) + POWER(Long_Dist, 2)),4) AS Distance
FROM
    (
        SELECT
            MAX(LAT_N) - MIN(LAT_N) AS Lat_Dist, MAX(LONG_W) - MIN(LONG_W) AS Long_Dist
        FROM
            STATION
    ) AS Lat_Long_dist;
