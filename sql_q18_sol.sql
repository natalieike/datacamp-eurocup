-- 18. Write a SQL query to find the highest number of foul cards given in one match
-- I'm finding the max kicks in penalty_shootout?

WITH pk AS (
	SELECT ps.match_no, COUNT(ps.kick_id) as kick_count
	FROM euro_cup_2016.penalty_shootout ps 
	GROUP BY ps.match_no)
SELECT match_no, kick_count
FROM pk
WHERE kick_count = (SELECT MAX(kick_count) FROM pk);

