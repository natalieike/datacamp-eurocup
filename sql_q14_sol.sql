-- 14. Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order.
-- I'm assuming this is referring to the referee_id in match_mast for the match_no in player_booked


SELECT COUNT(pb.match_no) as num_bookings, mm.referee_id, rm.referee_name
FROM euro_cup_2016.player_booked pb 
INNER JOIN euro_cup_2016.match_mast mm ON pb.match_no = mm.match_no
INNER JOIN euro_cup_2016.referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY mm.referee_id, rm.referee_name
ORDER BY num_bookings DESC;