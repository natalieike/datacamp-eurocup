-- 2. Write a SQL query to find the number of matches that were won by penalty shootout.

SELECT COUNT(decided_by) as count_decided_penalty
FROM euro_cup_2016.match_mast mm 
WHERE decided_by = 'P';
