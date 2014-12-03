SELECT tb_corp.corp_id AS 大街公司ID, 
	tb_corp.full_name AS 全称, 
	tb_corp.short_name AS 简称, 
	tb_corp.total_num AS 总雇员, 
	tb_corp.zaizhi_num AS 在职雇员, 
	tb_corp.lizhi_num AS 离职雇员, 
	tb_corp.shixi_num AS 实习雇员, 
	tb_company.id AS 吐司公司ID, 
	tb_company.short_name AS 吐司公司简称, 
	tb_company_count.employee_cnt AS 吐司雇员数, 
	tb_company_count.follow_cnt AS 吐司关注数, 
	tb_company_count.post_cnt AS 吐司帖子数, 
	tb_company_count.comment_cnt AS 吐司评论数
FROM tb_corp LEFT OUTER JOIN tb_company ON tb_corp.corp_id = tb_company.corp_id
	 LEFT OUTER JOIN tb_company_count ON tb_company.id = tb_company_count.id
WHERE 
	tb_company.to_company_id is null or
	 ( tb_company.`status`<4
	and tb_company.to_company_id=0)
