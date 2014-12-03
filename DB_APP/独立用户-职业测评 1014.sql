SELECT date(create_date) days, uid ,1014
 FROM tb_holland_report WHERE create_date>='2013-05-01' group by days,uid
