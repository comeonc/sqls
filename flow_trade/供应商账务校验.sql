SELECT
	cd.stat_date ,
	cd.submit_count '提交条数' ,
	cd.submit_piece '提交分片' ,
	cd.success_count '成功条数' ,
	cd.success_piece '成功分片' ,
	cd.fail_count '失败条数' ,
	cd.fail_piece '失败分片' ,
	cd.error_count '驳回条数' ,
	cd.error_piece '驳回分片' ,
	cu.total_sms_piece_mt '计费分片' ,
	cu.total_return_piece '返还分片' ,
	cd.submit_piece - cd.error_piece - cd.fail_piece - cu.total_sms_piece_mt '计费分片差' ,
	cd.submit_piece - cd.success_piece - cd.error_piece - cu.total_return_piece '返还分片差' ,
	cu.using_sms_mt - cu.total_sms_mt - cu.total_return '动态计费差'
FROM
	system_sms_supplier_daily cd
LEFT JOIN system_supplier_capital_using cu ON cd.stat_date = cu.stat_date
WHERE
	cd.stat_date >= '2017-10-01';