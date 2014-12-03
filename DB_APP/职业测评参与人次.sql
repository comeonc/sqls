SELECT date(create_date) days, COUNT(*) total FROM tb_holland_report WHERE create_date>='2013-03-01' group by days
