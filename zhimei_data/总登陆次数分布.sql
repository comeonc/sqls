select login_times,count(login_times) users FROM
(
	select count(user_id) as login_times from core_user_login group by user_id
) as a group by login_times order by login_times asc