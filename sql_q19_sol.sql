-- 19. Write a SQL query to find the number of captains who were also goalkeepers

SELECT COUNT(DISTINCT mc.player_captain) as num_goalie_capts
FROM euro_cup_2016.match_captain mc 
INNER JOIN euro_cup_2016.player_mast pm ON mc.player_captain = pm.player_id
WHERE pm.posi_to_play = 'GK';
