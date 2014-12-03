SELECT date(create_date) days, COUNT(*) total FROM tb_belbin WHERE create_date>='2013-03-01' group by days
