select 
	identity as '身份 0：学生；1：白领; null 未知', 
	gender as '性别  1：男 2：女; 0 未知', 
	count(1) as '数目' 
from 
tb_xtj_user
where audit_status>=0 and focus_status=1
group by identity, gender