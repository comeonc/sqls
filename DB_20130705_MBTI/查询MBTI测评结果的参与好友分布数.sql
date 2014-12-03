SELECT
	total,
	count(total)
FROM
	(
		SELECT
			count(d.uid) total
		FROM
			DB_20130705_MBTI.tb_mbti_user_detail d
		INNER JOIN DB_20130711_DW.tb_relation_buddy3 t ON d.uid = t.owner_uid
		INNER JOIN DB_20130705_MBTI.tb_mbti_user_detail d2 ON t.buddy_uid = d2.uid
		GROUP BY
			d.uid
	) t
GROUP BY
	total
ORDER BY
	total ASC