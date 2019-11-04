SELECT
	account_id ,
	supplier_id ,
	date(report_time) ,
	report_mobile ,
	report_content ,
	report_channel
FROM
	sms_complain
WHERE
	report_mobile IN(
		SELECT
			report_mobile
		FROM
			(
				SELECT
					report_mobile ,
					DATE_FORMAT(report_time , '%Y-%m') m ,
					count(1) total
				FROM
					`sms_complain`
				GROUP BY
					report_mobile ,
					DATE_FORMAT(report_time , '%Y-%m')
			) AS t
		GROUP BY
			report_mobile
		HAVING
			count(1) > 1
	)
ORDER BY
	report_mobile ASC ,
	report_time ASC