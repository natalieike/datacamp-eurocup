-- 13. Write a SQL query to find all the defenders who scored a goal for their teams

SELECT COUNT(gd.goal_id) as goals_scored, gd.player_id, pm.player_name, pp.position_desc
FROM euro_cup_2016.goal_details gd 
INNER JOIN euro_cup_2016.player_mast pm ON gd.player_id = pm.player_id
INNER JOIN euro_cup_2016.playing_position pp ON pm.posi_to_play = pp.position_id
WHERE pp.position_desc = 'Defenders'
GROUP BY gd.team_id, gd.player_id, pm.player_name, pp.position_desc
HAVING COUNT(gd.goal_id) > 0;