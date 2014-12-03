select distinct company_id from (

	# user
	select distinct u.company_id from tb_user u inner join tb_company c on u.company_id=c.id where u.company_id>0 and c.to_company_id>0 
	union
	# post
	select distinct p.company_id from tb_post p inner join tb_company c on p.company_id=c.id where c.to_company_id>0
	union
	# post_comment
	select distinct p.company_id from tb_post_comment p inner join tb_company c on p.company_id=c.id where c.to_company_id>0
	union
	# post_company
	select distinct p.company_id from tb_post_company p inner join tb_company c on p.company_id=c.id where c.to_company_id>0
	union
	# company_alias 
	select distinct ca.company_id from tb_company_alias ca inner join tb_company c on ca.company_id=c.id where c.to_company_id>0
	union
	# company_follow 
	select distinct cf.company_id from tb_company_follow cf inner join tb_company c on cf.company_id=c.id where c.to_company_id>0
	union
	# company 
	select distinct c1.id from tb_company c1 inner join tb_company c2 on c1.to_company_id=c2.id where c2.to_company_id>0 
	
    union
	# salary
	select distinct s.company_id from tb_salary s inner join tb_company c on s.company_id=c.id where c.to_company_id>0

) as c

