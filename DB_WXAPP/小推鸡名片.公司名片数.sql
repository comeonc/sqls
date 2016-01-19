select 
	corp_name ,
	count(1) as 'num' 
from 
tb_xtj_user
where audit_status>=0 and focus_status=1 and identity=1
group by corp_name order by num desc limit 100