-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were played.

SELECT DISTINCT mm.venue_id, sv.venue_name
FROM euro_cup_2016.match_mast mm 
INNER JOIN euro_cup_2016.soccer_venue sv ON mm.venue_id = sv.venue_id
WHERE mm.decided_by = 'P'