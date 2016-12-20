SELECT
	a.`日期`,
	a.`点击加入人才库`,
	b.`加入人才库`,
	c.`小米扫码量关注`,
	d.`小米已关注扫码`
FROM
	(
		SELECT
			date(create_date) AS '日期',
			count(DISTINCT open_id) AS '点击加入人才库'
		FROM
			DB_WESHOP.tb_weshop_corp_talent
		WHERE
			create_date > '2016-09-17'
		GROUP BY
			日期
		ORDER BY
			日期 DESC
	) a
LEFT JOIN (
	SELECT
		date(create_date) AS '日期',
		count(DISTINCT open_id) AS '加入人才库'
	FROM
		DB_WESHOP.tb_weshop_corp_talent
	WHERE
		dajie_uid > 0
	AND create_date > '2016-09-17'
	GROUP BY
		日期
	ORDER BY
		日期 DESC
) b ON a.日期 = b.日期
LEFT JOIN (
	SELECT
		date(create_date) '日期',
		count(1) '小米扫码量关注'
	FROM
		tb_weshop_receive_message
	WHERE
		content_add = 'qrscene_special_sg_6_10_1'
	GROUP BY
		日期
	ORDER BY
		日期 DESC
) c ON a.日期 = c.日期
LEFT JOIN (
	SELECT
		date(create_date) '日期',
		count(1) '小米已关注扫码'
	FROM
		tb_weshop_receive_message
	WHERE
		content_add = 'special_sg_6_10_1'
	GROUP BY
		日期
	ORDER BY
		日期 DESC
) d ON a.日期 = d.日期