SELECT date(create_date) days, uid, 1012
 FROM tb_evaluate_record WHERE create_date>='2013-05-01' group by days,uid
