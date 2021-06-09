--The total score of a hacker is the sum of their maximum scores for all of the challenges. 
--Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
--If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

---https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT id, name, total_score
FROM (
        SELECT id, SUM(Score) AS total_score
        FROM(
                SELECT hacker_id AS id, challenge_id, MAX(score) AS Score
                FROM Submissions
                GROUP BY 1,2
            ) chalng_max_scr
        GROUP BY id
        HAVING total_score <> 0
     )ttl_score
JOIN
Hackers
ON
ttl_score.id = Hackers.hacker_id
ORDER BY total_score DESC,id;
