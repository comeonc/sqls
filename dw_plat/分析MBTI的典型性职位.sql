SELECT
	m.mbti,
	p.position,
	count(1) total
FROM
	tb_mbti_user_detail m
LEFT JOIN dw.tb_user_practice p ON m.uid = p.uid
WHERE
	p.position IS NOT NULL
AND p.position <> '实习生'
AND p.position <> ''
AND p.position <> '实习'
GROUP BY
	m.mbti,
	p.position
HAVING
	count(1) > 50
ORDER BY
	m.mbti,
	total DESC