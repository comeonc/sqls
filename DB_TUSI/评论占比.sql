select a.hours, a.num, b.num, format(( a.num/ 5) / ( b.num/5),2) from 
(
	select date(create_date) hours,count(1) num from tb_post_comment where create_date>"2015-03-24" and uid % 10 <5 group by hours
) a 
left join 
(
	select date(create_date) hours,count(1) num from tb_post_comment where create_date>"2015-03-24" and uid % 10 >=5 group by hours
) b on a.hours=b.hours