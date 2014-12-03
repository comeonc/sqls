select a.h, a.c '7.25', b.c '7.25ios'  from 
(select HOUR(create_date) h, count(1) c from tb_user WHERE create_date>'2014-07-25' and create_date<'2014-07-26' and type=1 GROUP BY h )a
left JOIN 
(select HOUR(create_date) h,count(1) c from tb_user WHERE create_date>'2014-07-25' and create_date<'2014-07-26' and device_type=3 and type=1 GROUP BY h )b 
on a.h=b.h