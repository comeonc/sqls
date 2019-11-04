SELECT
	date(create_data) days ,
	pay_status '支付状态' ,
	CASE pay_status
WHEN 1 THEN
	'已支付'
WHEN 2 THEN
	'未支付'
WHEN 3 THEN
	'已申请退款'
WHEN 4 THEN
	'取消拼团'
ELSE
	'未知'
END '状态描述' ,
 count(1) '支付次数' ,
 count(DISTINCT offer_uid) '支付人数'
FROM
	tb_activity_team_number
GROUP BY
	days ,
	pay_status