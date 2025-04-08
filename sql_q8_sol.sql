-- 8. Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match

WITH tm AS (
    SELECT a.match_no, a.team_id AS a_team, c.country_name as a_country, b.team_id AS b_team, d.country_name as b_country
    FROM euro_cup_2016.match_details a
    INNER JOIN euro_cup_2016.match_details b ON a.match_no = b.match_no AND a.team_id <> b.team_id
    INNER JOIN euro_cup_2016.soccer_country c ON a.team_id = c.country_id
    INNER JOIN euro_cup_2016.soccer_country d ON b.team_id = d.country_id
),
pc AS (
    SELECT COUNT(*) AS penalty_count, match_no, team_id
    FROM euro_cup_2016.penalty_shootout
    GROUP BY match_no, team_id
)
SELECT 
    pc.penalty_count, 
    pc.match_no, 
    tm.a_team, 
    tm.a_country,
    tm.b_team,
    tm.b_country
FROM pc
JOIN tm ON pc.match_no = tm.match_no
ORDER BY pc.penalty_count DESC
LIMIT 1;