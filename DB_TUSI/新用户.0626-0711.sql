select a.h, a.c '6.26', b.c '7.25' , c.c '7.25美图', d.c '7.25有公司', e.c '7.25美图有公司' from 
(select HOUR(create_date) h, count(1) c from tb_user WHERE create_date>'2014-06-26' and create_date<'2014-06-27' and type=1 GROUP BY h )a
left JOIN 
(select HOUR(create_date) h,count(1) c from tb_user WHERE create_date>'2014-07-25' and create_date<'2014-07-26' and type=1 GROUP BY h )b 
on a.h=b.h
left JOIN 
(select HOUR(create_date) h,count(1) c from tb_user WHERE create_date>'2014-07-25' and create_date<'2014-07-26' and channel='meitu' and type=1 GROUP BY h )c
on a.h=c.h
left JOIN 
(select HOUR(create_date) h,count(1) c from tb_user WHERE create_date>'2014-07-25' and create_date<'2014-07-26' and company_id>0 and type=1 GROUP BY h )d
on a.h=d.h
left JOIN 
(select HOUR(create_date) h,count(1) c from tb_user WHERE create_date>'2014-07-252014-07-25' and create_date<'2014-07-26' and channel='meitu' and company_id>0 and type=1 GROUP BY h )e
on a.h=e.h