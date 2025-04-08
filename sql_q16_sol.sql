-- 16. Write a SQL query to find referees and the number of matches they worked in each venue

SELECT mm.referee_id, rm.referee_name, mm.venue_id, sv.venue_name, COUNT(DISTINCT mm.match_no) as num_matches
FROM euro_cup_2016.match_mast mm 
INNER JOIN euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
INNER JOIN euro_cup_2016.soccer_venue sv ON mm.venue_id = sv.venue_id
GROUP BY mm.referee_id, rm.referee_name, mm.venue_id, sv.venue_name;