select user_id,count(user_id) total from shares where user_id in 
(
	select id from user where add_time>'2013-01-21' and add_time<'2013-01-22'
) group by user_id order by total desc limit 100