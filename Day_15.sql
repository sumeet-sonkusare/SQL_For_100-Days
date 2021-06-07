--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
--https://www.hackerrank.com/challenges/weather-observation-station-17/problem

SELECT
    ROUND(LONG_W, 4)
FROM
    STATION
WHERE
    LAT_N = (
            SELECT 
                LAT_N
            FROM
                STATION
            WHERE
                LAT_N > 38.7780
            ORDER BY 
                LAT_N
            LIMIT 1);
