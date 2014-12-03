select 
	a.eid,
	case 
		when a.eid=-1 then '存钱罐'
		else '主站'
	end as '类型',
	a.add_date,count(*) '注册数' 
from 
(
	select Date(r.add_time) add_date, 
	case 
		when r.eid = -1 then -1
		else 1
	end as eid
 from user_reg r where r.add_time>'2012-08-10' 
) a group by a.add_date,a.eid order by a.eid,a.add_date