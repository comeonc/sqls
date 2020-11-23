SELECT
	s. NAME ,
	t.*
FROM
	sms_supplier s
INNER JOIN(
	SELECT
		supplier_id ,
		sum(success_count) AS total_count ,
		sum(success_piece) AS total_piece ,
		sum(success_count_cmcc) AS cmcc_count ,
		sum(success_count_unicom) AS unicom_count ,
		sum(success_count_telecom) AS telecom_count ,
		sum(success_piece_cmcc) AS cmcc_piece ,
		sum(success_piece_unicom) AS unicom_piece ,
		sum(success_piece_telecom) AS telecom_piect
	FROM
		sms_supplier_discount_daily
	WHERE
		stat_date >= '2019-11-01'
	AND stat_date <= '2019-11-30'
	GROUP BY
		supplier_id
) AS t ON s.id = t.supplier_id