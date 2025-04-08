-- 4. Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament.
-- Assumption: for every in, there is a corresponding out (eg, players are swapped). So we only have to count the ins.

SELECT play_schedule, play_half, count(player_id) as num_substitutions
FROM euro_cup_2016.player_in_out pio 
WHERE in_out = 'I'
GROUP BY play_schedule, play_half
ORDER BY FIELD(play_schedule, 'NT', 'ET', 'ST'), play_half ASC;