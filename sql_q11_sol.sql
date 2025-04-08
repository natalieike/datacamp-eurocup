-- 11. Write a SQL query to find the players, their jersey number, and playing club who were the goalkeepers for England in EURO Cup 2016.

SELECT pm.player_id, pm.jersey_no, pm.player_name, pm.playing_club
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.soccer_country sc on pm.team_id = sc.country_id
INNER JOIN euro_cup_2016.playing_position pp on pm.posi_to_play = pp.position_id
WHERE sc.country_name = 'England' AND pp.position_desc like '%goal%';