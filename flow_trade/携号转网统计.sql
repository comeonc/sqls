(
	SELECT
		'修改' ,
		count(1)
	FROM
		`mobile_operator`
	WHERE
		update_date > '2020-02-01'
	AND create_date < '2020-02-01'
)
UNION
	(
		SELECT
			'新增' ,
			count(1)
		FROM
			`mobile_operator`
		WHERE
			create_date > '2020-02-01'
	)
UNION
	(
		SELECT
			'总数' ,
			count(1)
		FROM
			`mobile_operator`
	)