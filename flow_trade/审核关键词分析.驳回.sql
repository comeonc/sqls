SELECT
	audit_keyword,
	count( audit_keyword )  '驳回批次',
	sum( success_number )  '短信条数'
FROM
	sms_down_audit_logs 
WHERE
	create_date > '2020-07-07' 
	and audit_status=5 and area_id=1
GROUP BY
	audit_keyword 
ORDER BY
	count( audit_keyword ) DESC