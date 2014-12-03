select 
	a.days, a.num '新增公司数',
	b.num '游戏参与次数', b.num1 '游戏参与人数',
	c.num '点评参与人数', c.num1 '点评参与次数'
 from 


(
	select date(create_date) days, count(1) num from `tb_elect_activity_company` where create_date>'2014-11-20' group by days
) as a left join 


(
	select date(create_date) days, count(1) num, count(DISTINCT tusi_uvid) num1 from `tb_elect_activity_score` GROUP BY days
) as b on a.days=b.days left join 


(
	select date(create_date) days, count(DISTINCT tusi_uvid) num ,count(DISTINCT tusi_uid,company_name) num1 from `tb_elect_activity_review` group by days
) as c on a.days=c.days
