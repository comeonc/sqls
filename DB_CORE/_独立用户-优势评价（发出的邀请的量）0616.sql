SELECT date(create_date) days, uid,0616 FROM DB_CORE.tb_buddy_comment WHERE   create_date>='2013-05-01' group by days, uid
