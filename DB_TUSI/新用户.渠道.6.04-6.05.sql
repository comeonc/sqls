select a.channel, a.c '6.04', b.c '6.05' from 
(select '6.04',channel, count(1) c from tb_user WHERE create_date>'2014-06-04' and create_date<'2014-06-05' and type=1 GROUP BY channel )a
left JOIN 
(select '5.30', channel,count(1) c from tb_user WHERE create_date>'2014-06-05' and create_date<'2014-06-06' and type=1 GROUP BY channel )b 
on a.channel=b.channel
