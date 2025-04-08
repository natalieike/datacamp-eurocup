-- 15. Write a SQL query to find the referees who booked the most number of players

WITH ref_bookings AS (
	SELECT COUNT(pb.match_no) as num_bookings, mm.referee_id, rm.referee_name
	FROM euro_cup_2016.player_booked pb 
	INNER JOIN euro_cup_2016.match_mast mm ON pb.match_no = mm.match_no
	INNER JOIN euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
	GROUP BY mm.referee_id, rm.referee_name)
SELECT num_bookings, referee_id, referee_name
FROM ref_bookings rb
WHERE num_bookings = (SELECT MAX(num_bookings) FROM ref_bookings);
