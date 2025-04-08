-- 10. Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016

SELECT pm.player_id, pm.jersey_no, pm.player_name, pm.dt_of_bir, pm.age, sc.country_name, pm.playing_club, pp.position_desc
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.soccer_country sc on pm.team_id = sc.country_id
INNER JOIN euro_cup_2016.playing_position pp on pm.posi_to_play = pp.position_id
WHERE sc.country_name = 'England' AND pm.playing_club = 'Liverpool';