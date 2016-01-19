select 
	work_start_year,
	count(1) as 'num' 
from 
tb_xtj_user
where audit_status>=0 and focus_status=1 and identity=1
group by work_start_year order by work_start_year desc limit 300