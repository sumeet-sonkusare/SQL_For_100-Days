--1) Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_v=zen
SELECT 
    CITY.NAME
FROM 
    CITY
JOIN 
    COUNTRY
ON 
    CITY.COUNTRYCODE = COUNTRY.CODE
WHERE 
    COUNTRY.CONTINENT = 'Africa';
    
    
--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and 
--their respective average city populations (CITY.Population) rounded down to the nearest integer.
--https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT
    COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM
    CITY
JOIN
    COUNTRY
ON
    CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY
    COUNTRY.CONTINENT;
