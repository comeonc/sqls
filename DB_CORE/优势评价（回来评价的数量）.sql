SELECT date(update_date) days, COUNT(*) total FROM DB_CORE.tb_buddy_comment WHERE   update_date>='2013-03-01' AND uid>0  group by days
