SELECT
	pc.id,pc.`status`,p.`status`
	
FROM
	tb_post p
INNER JOIN tb_post_company pc ON p.id = pc.post_id
AND p.company_id = pc.company_id
WHERE
	p.`status` <3 and pc.`status` >=3


SELECT
	pc.id,pc.`status`,p.`status`
	
FROM
	tb_post p
INNER JOIN tb_post_company pc ON p.id = pc.post_id
AND p.company_id = pc.company_id
WHERE
	pc.type<>3


SELECT
	pc.id
	,p.*,
	pc.*
	
FROM
	tb_post p
INNER JOIN tb_post_company pc ON p.id = pc.post_id
AND p.company_id = pc.company_id
WHERE
	pc.type<>3 and p.`status` = pc.`status`