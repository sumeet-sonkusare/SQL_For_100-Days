--Generate the following two result sets:
--1.	Query an alphabetically ordered list of all names in OCCUPATIONS, 
-----immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: 
-----AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

--2.	Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
---------------------There are a total of [occupation_count] [occupation]s.

--https://www.hackerrank.com/challenges/the-pads/problem

SELECT 
    CONCAT(Name,'(',LEFT(Occupation,1),')')
FROM
    Occupations

ORDER BY NAME;

SELECT 
    CONCAT('There are a total of ',COUNT(Occupation),' ', lower(Occupation),'s.')
FROM
    Occupations
GROUP BY 
    Occupation
ORDER BY 
    COUNT(Occupation);
