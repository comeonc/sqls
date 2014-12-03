SELECT date(create_date) days, COUNT(*) total FROM DB_CORE.tb_buddy_comment WHERE   create_date>='2013-03-01' group by days
