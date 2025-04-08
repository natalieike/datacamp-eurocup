-- 6. Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout

SELECT COUNT(a.match_no) as num_win_by_1
FROM euro_cup_2016.match_details a
INNER JOIN euro_cup_2016.match_details b on a.match_no = b.match_no
WHERE a.decided_by = 'N' and (a.goal_score - b.goal_score) = 1;