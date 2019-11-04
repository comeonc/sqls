SELECT
	supplier_id ,
	stat_date ,
	submit_count '提交条数' ,
	success_count '成功条数' ,
	fail_count '失败条数' ,
	submit_count - success_count - fail_count '未知条数' ,
	submit_piece '提交分片' ,
	success_piece '成功分片' ,
	fail_piece '失败分片' ,
	submit_piece - success_piece - fail_piece '未知分片'
FROM
	sms_down_supplier_daily
WHERE
	supplier_id = 1021