-- 20. Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule

SELECT DISTINCT pio.player_id, pm.player_name
FROM euro_cup_2016.player_in_out pio 
INNER JOIN euro_cup_2016.player_mast pm ON pio.player_id = pm.player_id
WHERE pio.in_out = 'I' AND pio.play_half = 1 AND pio.play_schedule = 'NT';