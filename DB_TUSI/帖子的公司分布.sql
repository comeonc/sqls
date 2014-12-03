
SELECT
	c.id as '吐司公司ID',
	c.short_name as '公司简称',  
	c.type as '公司类型',
	sum(p.num)  as '新帖子数'
FROM tb_company c
INNER JOIN
(
select company_id,count(*) num  from tb_post where user_type=1 or user_type=0 group by company_id 
) p on c.id=p.company_id

group by c.id
order by sum(p.num) desc 
