select f.user_id userId,f.num num,u.username,u.openplatform,u.uid from (
	select f.user_id,count(f.user_id) num from im2_friend_00  f left join user u on f.friend_id=u.id where u.user_type=1 group by f.user_id order by num desc limit 20
) f left join user u on f.user_id=u.id