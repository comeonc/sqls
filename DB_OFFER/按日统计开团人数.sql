SELECT
	date(create_data) days ,
	count(1) '开团次数' ,
	count(DISTINCT offer_uid) '开团人数'
FROM
	`tb_activity_team`
GROUP BY
	days;