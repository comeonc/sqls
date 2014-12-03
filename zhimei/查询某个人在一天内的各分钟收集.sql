select type, mins,count(*) total from
(
	select collect_type type ,DATE_FORMAT(add_time, '%H:%i') mins from reshares where user_id=3017626 and add_time>'2013-01-28' and add_time<'2013-01-29' and flag<5
) a group by type, mins order by type,mins