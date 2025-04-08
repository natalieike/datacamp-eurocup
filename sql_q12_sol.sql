-- 12. Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.

SELECT COUNT(gd.goal_id) as goals_scored, gd.team_id, sc.country_name, pm.posi_to_play, pp.position_desc
FROM euro_cup_2016.goal_details gd 
INNER JOIN euro_cup_2016.soccer_country sc ON gd.team_id = sc.country_id
INNER JOIN euro_cup_2016.player_mast pm ON gd.player_id = pm.player_id
INNER JOIN euro_cup_2016.playing_position pp ON pm.posi_to_play = pp.position_id
GROUP BY gd.team_id, sc.country_name, pm.posi_to_play, pp.position_desc
HAVING COUNT(gd.goal_id) > 0;