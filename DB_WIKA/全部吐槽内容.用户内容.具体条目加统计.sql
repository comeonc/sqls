SELECT a.*, b.num as 啪啪数, c.num as 分享数
FROM
(
	SELECT 
		tb_cyl_posting_info.id,
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
) as a 
left join 
(
	SELECT
		tb_cyl_posting_interact.posting_id,
		count(
			tb_cyl_posting_interact.posting_id
		) num
	FROM
		tb_cyl_posting_interact
	WHERE
		tb_cyl_posting_interact.type = 1
	GROUP BY
		tb_cyl_posting_interact.posting_id

) b on a.id=b.posting_id
left join 
(
	SELECT
		tb_cyl_posting_interact.posting_id,
		count(
			tb_cyl_posting_interact.posting_id
		) num
	FROM
		tb_cyl_posting_interact
	WHERE
		tb_cyl_posting_interact.type = 2
	GROUP BY
		tb_cyl_posting_interact.posting_id

) c on a.id=c.posting_id

