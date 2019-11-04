SELECT
	callback_using ,
	sum(total)
FROM
	`sms_callback_customer_using`
WHERE
	customer_id = 107753032
AND stat_date >= '2019-06-01'
AND stat_date <= '2019-06-30'
GROUP BY
	callback_using 

ORDER BY
	callback_using ASC