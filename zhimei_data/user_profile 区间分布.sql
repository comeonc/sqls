#总收集数
select num,count(num) users from (select 
	case
		when reshare_count	<=0 									then 0
		when reshare_count	>=1 		and reshare_count	<5 		then 1
		when reshare_count	>=5 		and reshare_count	<10 	then 5
		when reshare_count	>=10 		and reshare_count	<20 	then 10
		when reshare_count	>=20 		and reshare_count	<50 	then 20
		when reshare_count	>=50 		and reshare_count	<100 	then 50
		when reshare_count	>=100 		and reshare_count	<200 	then 100
		when reshare_count	>=200 		and reshare_count	<500 	then 200
		when reshare_count	>=500 		and reshare_count	<1000 	then 500
		when reshare_count	>=1000 		and reshare_count	<2000 	then 1000
		when reshare_count	>=2000 		and reshare_count	<5000 	then 2000
		when reshare_count	>=5000 		and reshare_count	<10000 	then 5000
		when reshare_count	>=10000 								then 10000
	END as num
from user_profile) p group by p.num order by p.num asc ;


#首发收集数
select num,count(num) users from (select 
	case
		when share_count	<=0 									then 0
		when share_count	>=1 		and share_count	<5 		then 1
		when share_count	>=5 		and share_count	<10 	then 5
		when share_count	>=10 		and share_count	<20 	then 10
		when share_count	>=20 		and share_count	<50 	then 20
		when share_count	>=50 		and share_count	<100 	then 50
		when share_count	>=100 		and share_count	<200 	then 100
		when share_count	>=200 		and share_count	<500 	then 200
		when share_count	>=500 		and share_count	<1000 	then 500
		when share_count	>=1000 		and share_count	<2000 	then 1000
		when share_count	>=2000 		and share_count	<5000 	then 2000
		when share_count	>=5000 		and share_count	<10000 	then 5000
		when share_count	>=10000 								then 10000
	END as num
from user_profile ) p group by p.num order by p.num asc ;



#评论数
select num,count(num) users from ( select 
	case
		when comment_count	<=0 									then 0
		when comment_count	>=1 		and comment_count	<5 		then 1
		when comment_count	>=5 		and comment_count	<10 	then 5
		when comment_count	>=10 		and comment_count	<20 	then 10
		when comment_count	>=20 		and comment_count	<50 	then 20
		when comment_count	>=50 		and comment_count	<100 	then 50
		when comment_count	>=100 		and comment_count	<200 	then 100
		when comment_count	>=200 		and comment_count	<500 	then 200
		when comment_count	>=500 		and comment_count	<1000 	then 500
		when comment_count	>=1000 		and comment_count	<2000 	then 1000
		when comment_count	>=2000 		and comment_count	<5000 	then 2000
		when comment_count	>=5000 		and comment_count	<10000 	then 5000
		when comment_count	>=10000 								then 10000
	END as num
from user_profile ) p group by p.num order by p.num asc ;


#粉丝数
select num,count(num) users from ( select 
	case
		when fans_count	<=0 									then 0
		when fans_count	>=1 		and fans_count	<5 		then 1
		when fans_count	>=5 		and fans_count	<10 	then 5
		when fans_count	>=10 		and fans_count	<20 	then 10
		when fans_count	>=20 		and fans_count	<50 	then 20
		when fans_count	>=50 		and fans_count	<100 	then 50
		when fans_count	>=100 		and fans_count	<200 	then 100
		when fans_count	>=200 		and fans_count	<500 	then 200
		when fans_count	>=500 		and fans_count	<1000 	then 500
		when fans_count	>=1000 		and fans_count	<2000 	then 1000
		when fans_count	>=2000 		and fans_count	<5000 	then 2000
		when fans_count	>=5000 		and fans_count	<10000 	then 5000
		when fans_count	>=10000 								then 10000
	END as num
from user_profile ) p group by p.num order by p.num asc ;


#关注人数
select num,count(num) users from ( select 
	case
		when follow_count	<=0 									then 0
		when follow_count	>=1 		and follow_count	<5 		then 1
		when follow_count	>=5 		and follow_count	<10 	then 5
		when follow_count	>=10 		and follow_count	<20 	then 10
		when follow_count	>=20 		and follow_count	<50 	then 20
		when follow_count	>=50 		and follow_count	<100 	then 50
		when follow_count	>=100 		and follow_count	<200 	then 100
		when follow_count	>=200 		and follow_count	<500 	then 200
		when follow_count	>=500 		and follow_count	<1000 	then 500
		when follow_count	>=1000 		and follow_count	<2000 	then 1000
		when follow_count	>=2000 		and follow_count	<5000 	then 2000
		when follow_count	>=5000 		and follow_count	<10000 	then 5000
		when follow_count	>=10000 								then 10000
	END as num
from user_profile ) p group by p.num order by p.num asc ;


#好友数
select num,count(num) users from ( select 
	case
		when friends_count	<=0 									then 0
		when friends_count	>=1 		and friends_count	<5 		then 1
		when friends_count	>=5 		and friends_count	<10 	then 5
		when friends_count	>=10 		and friends_count	<20 	then 10
		when friends_count	>=20 		and friends_count	<50 	then 20
		when friends_count	>=50 		and friends_count	<100 	then 50
		when friends_count	>=100 		and friends_count	<200 	then 100
		when friends_count	>=200 		and friends_count	<500 	then 200
		when friends_count	>=500 		and friends_count	<1000 	then 500
		when friends_count	>=1000 		and friends_count	<2000 	then 1000
		when friends_count	>=2000 		and friends_count	<5000 	then 2000
		when friends_count	>=5000 		and friends_count	<10000 	then 5000
		when friends_count	>=10000 								then 10000
	END as num
from user_profile ) p group by p.num order by p.num asc ;





