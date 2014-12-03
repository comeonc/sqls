
select user_id, sum(total) total from 
(
	(
	select user_id,count(user_id)*5 as total from core_user_login 
	where add_date>'2012-10-29' and user_id in 
		(select user_id from certify where flag<5)
	group by user_id 
	) 
 union
	(
	select user_id,count(user_id) as total from shares 
	where add_time>'2012-10-29' and flag<5 and user_id in 
		(select user_id from certify where flag<5)
	group by user_id 
	) 
)t group by user_id order by total desc
