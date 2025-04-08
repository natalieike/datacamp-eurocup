-- 3. Write a SQL query to find the match number, date, and score for matches in which no stoppage time was added in the 1st half.

SELECT match_no, play_date, stop1_sec
FROM euro_cup_2016.match_mast mm 
WHERE stop1_sec = 0;