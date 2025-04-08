-- 17. Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.

WITH ass_ref_counts as (
	SELECT COUNT(arm.ass_ref_id) as num_ass_refs, arm.country_id, sc.country_name
	FROM euro_cup_2016.asst_referee_mast arm 
	INNER JOIN euro_cup_2016.soccer_country sc ON arm.country_id = sc.country_id
	GROUP BY arm.country_id, sc.country_name)
SELECT num_ass_refs, country_id, country_name
FROM ass_ref_counts 
WHERE num_ass_refs = (SELECT MAX(num_ass_refs) FROM ass_ref_counts);
