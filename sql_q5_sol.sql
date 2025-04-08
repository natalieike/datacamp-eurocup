-- 5. Write a SQL query to find the number of bookings that happened in stoppage time.

SELECT count(player_id) as num_stoppage_bookings
FROM euro_cup_2016.player_booked pb 
WHERE play_schedule = 'ST';