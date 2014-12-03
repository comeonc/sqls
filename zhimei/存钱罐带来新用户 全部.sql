 select
	r.id, 
	r.invite_id, 
	r.`code`, 
	r.http_u,
	r.http_c,
	r.ip, 
	u.nickname, 
	u.email, 
	date(u.add_time) add_date,
	u.add_time,
	r.`status`
from
	(
	select user_reg.uid id,user_reg.invite_id,user_reg.`code`,user_reg.ip,user_reg.add_time,user_reg.email,user_reg.`status`,user_reg.http_u,user_reg.http_c 
	from user_reg where add_time>'2012-07-12 00:00:00' and add_time<'2012-07-13 00:00:00' and eid=-1
	) as r
inner join 
	user u USING(id)