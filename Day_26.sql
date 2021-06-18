1. A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.
   Write a SQL solution to output big countries' name, population and area from table World
   
https://leetcode.com/problems/big-countries/

+-----------------+------------+------------+--------------+---------------+
| name            | continent  | area       | population   | gdp           |
+-----------------+------------+------------+--------------+---------------+
| Afghanistan     | Asia       | 652230     | 25500100     | 20343000      |
| Albania         | Europe     | 28748      | 2831741      | 12960000      |
| Algeria         | Africa     | 2381741    | 37100000     | 188681000     |
| Andorra         | Europe     | 468        | 78115        | 3712000       |
| Angola          | Africa     | 1246700    | 20609294     | 100990000     |
+-----------------+------------+------------+--------------+---------------+

SELECT 
    name, population, area
FROM 
    World
WHERE 
    (area>3000000) OR (population>25000000);

Output: 
+--------------+-------------+--------------+
| name         | population  | area         |
+--------------+-------------+--------------+
| Afghanistan  | 25500100    | 652230       |
| Algeria      | 37100000    | 2381741      |
+--------------+-------------+--------------+

2. There is a table courses with columns: student and class
List out all classes which have more than or equal to 5 students.

https://leetcode.com/problems/classes-more-than-5-students/

+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+

SELECT 
    class
FROM 
    courses 
GROUP BY 
    class
HAVING 
    COUNT(DISTINCT student) >= 5;

Output:
+---------+
| class   |
+---------+
| Math    |
+---------+
