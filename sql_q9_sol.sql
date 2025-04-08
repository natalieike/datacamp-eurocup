-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.

SELECT DISTINCT pm.jersey_no, pm.player_name
FROM euro_cup_2016.match_details md 
INNER JOIN euro_cup_2016.player_mast pm ON md.player_gk = pm.player_id
INNER JOIN euro_cup_2016.soccer_country sc ON md.team_id = sc.country_id
WHERE sc.country_name = 'Germany' AND md.play_stage = 'G';