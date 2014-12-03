SELECT date(update_date) days, uid, 0617 FROM DB_CORE.tb_buddy_comment WHERE   update_date>='2013-05-01' AND uid>0  group by days,uid
