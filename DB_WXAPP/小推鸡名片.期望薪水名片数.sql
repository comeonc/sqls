select 
	u.identity as '身份 0：学生；1：白领; null 未知',
	ui.expect_salary ,
	count(1) as num
from tb_xtj_user_intention ui inner join tb_xtj_user u on ui.open_id=u.open_id
where ui.audit_status>=0 and u.audit_status>=0
group by u.identity,ui.expect_salary 
order by num desc limit 300