SELECT
	a.h,
	a.num '07-27',
    b.num '07-28',
	c.num '07-29'
FROM
	(
		SELECT
			HOUR (create_date) h,
			count(*) num
		FROM
			tb_post_comment
		WHERE
			create_date > '2014-07-27'
		AND create_date < '2014-07-28'
		AND type = 1
		AND STATUS < 4
		GROUP BY
			h
	) a
LEFT JOIN (
	SELECT
		HOUR (create_date) h,
		count(*) num
	FROM
		tb_post_comment
	WHERE
		create_date > '2014-07-28'
	AND create_date < '2014-07-29'
	AND type = 1
	AND STATUS < 4
	GROUP BY
		h
) b ON a.h = b.h
LEFT JOIN (
	SELECT
		HOUR (create_date) h,
		count(*) num
	FROM
		tb_post_comment
	WHERE
		create_date > '2014-07-29'
	AND create_date < '2014-07-30'
	AND type = 1
	AND STATUS < 4
	GROUP BY
		h
) c ON a.h = c.h
