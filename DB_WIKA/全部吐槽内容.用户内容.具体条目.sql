SELECT tb_cyl_posting_info.id AS ID,
	tb_cyl_posting_info.corp_id AS 公司ID, 
	tb_cyl_posting_info.corp_name AS 公司名称, 
	tb_cyl_posting_info.vest AS 昵称, 
	tb_cyl_posting_info.create_date AS 创建时间, 
	tb_cyl_posting_info.`level` AS 是否血槽, 
	tb_cyl_posting_info.content AS 吐槽内容, 
	tb_cyl_posting_info.picture AS 图片,
	tb_cyl_posting_info.expression AS 表情代码
FROM tb_cyl_posting_info
WHERE `status`=0 
AND 
	type=0
ORDER BY id desc 