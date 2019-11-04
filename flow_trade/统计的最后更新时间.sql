(
	SELECT
		'sms_callback_customer_status' ,
		update_date
	FROM
		sms_callback_customer_status
	ORDER BY
		update_date DESC
	LIMIT 1
)
UNION
	(
		SELECT
			'sms_callback_customer_using' ,
			update_date
		FROM
			sms_callback_customer_using
		ORDER BY
			update_date DESC
		LIMIT 1
	)
UNION
	(
		SELECT
			'sms_callback_supplier_status' ,
			update_date
		FROM
			sms_callback_supplier_status
		ORDER BY
			update_date DESC
		LIMIT 1
	)
UNION
	(
		SELECT
			'sms_callback_supplier_using' ,
			update_date
		FROM
			sms_callback_supplier_using
		ORDER BY
			update_date DESC
		LIMIT 1
	)

UNION
	(
		SELECT
			'sms_send_customer_using' ,
			update_date
		FROM
			sms_send_customer_using
		ORDER BY
			update_date DESC
		LIMIT 1
	)
UNION
	(
		SELECT
			'sms_send_supplier_using' ,
			update_date
		FROM
			sms_send_supplier_using
		ORDER BY
			update_date DESC
		LIMIT 1
	)




