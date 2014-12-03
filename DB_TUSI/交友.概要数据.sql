select 
	a.days '日期', a.num '新用户', 
	b.num '上传头像次数', b.num1 '上传头像人数', 
	c.num '参与投票次数', c.num1 '参会与投票人数' 

from
(
	select date(create_date) days,count(1) num from tb_friends_user where create_date>'2014-11-20' and user_type=1 group by days
) as a


left join 
(
	select date(create_date) days, count(1) num, count(DISTINCT uid) num1 from tb_friends_album where type=1 group by days
) as b on a.days=b.days


left join
(
	select date(create_date) days, count(1) num, count(DISTINCT uid) num1 from tb_friends_ox_log group by days
) as c on a.days=c.days


