#接口注入
select * from DB_MAIL.tb_ncnt 
where create_date>'2013-05-20 18:00:00' and template='apprise_skill';

select * from DB_MAIL.tb_hrsv
where create_date>'2013-05-20 18:00:00' and template='apprise_skill';



#发送流水
SELECT DATE(sent_date)d,STATUS,COUNT(*),category FROM DB_MAIL.tb_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill' GROUP BY d, STATUS,category;

#发送流水-明细
SELECT * FROM DB_MAIL.tb_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill' order by id asc;



#查看阅读情况：
SELECT send_date,COUNT(DISTINCT uid) FROM DB_STAT.tb_view_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill' GROUP BY send_date;

#查看阅读情况-明细：
SELECT * FROM DB_STAT.tb_view_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill' ;



#查看链接点击情况：
SELECT send_date,COUNT(DISTINCT uid) FROM DB_STAT.tb_click_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill' GROUP BY send_date;

#查看链接点击情况-明细：
SELECT * FROM DB_STAT.tb_click_log 
WHERE create_date>'2013-05-20 18:00:00' and template='apprise_skill';
