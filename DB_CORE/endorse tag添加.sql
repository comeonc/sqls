SELECT date(create_date) days,count(*) FROM DB_CORE.tb_added_endorse WHERE create_date>='2013-05-01' group by days