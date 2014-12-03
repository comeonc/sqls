SELECT date(create_date) days, uid ,1013
FROM tb_belbin WHERE create_date>='2013-05-01' group by days,uid
