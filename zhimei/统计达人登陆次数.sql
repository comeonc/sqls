select login.*,certify.* FROM
(
	select user_id,count(user_id) as login_times from core_user_login where add_date>'2012-10-20' and user_id in (
		select user_id from certify where flag<5 and certify_type =2
	) group by user_id order by login_times desc 
) as  login left join certify on login.user_id=certify.user_id
;