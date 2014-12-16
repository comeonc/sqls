select a.hours, a.num, b.num, format(( a.num/ 1) / ( b.num/9),2) from 
(
	select hour(create_date) hours,count(1) num from tb_post_comment where create_date>"2014-12-10 00:00:00" and uid % 10 <1 group by hours
) a 
left join 
(
	select hour(create_date) hours,count(1) num from tb_post_comment where create_date>"2014-12-10 00:00:00" and uid % 10 >=1 group by hours
) b on a.hours=b.hours