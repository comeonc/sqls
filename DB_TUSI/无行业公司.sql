#explain 
SELECT
	c.id as '吐司公司ID',
	c.corp_id as '大街公司ID',
	c.short_name as '公司简称',
	c.full_name as '公司全称',
	c.type as '公司类型',
	c.`level` as '公司级别',
	c.`status` as '公司状态',
	cc.employee_cnt  as '真实用户数',
	cc.post_cnt as '真实帖子数'
FROM tb_company c
Inner JOIN tb_company_count cc on c.id=cc.id
LEFT JOIN  tb_company_industry ci on c.id=ci.company_id
where c.`status`<4 and cc.employee_cnt>1 and ci.company_id is null 
order by cc.employee_cnt  desc
limit 2000






