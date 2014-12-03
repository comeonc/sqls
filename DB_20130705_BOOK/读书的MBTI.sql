#select count(distinct c.actor_user_id) from tb_book_comment c inner join DB_20130705_MBTI.mbti_user_detail u on c.actor_user_id=u.uid 

#select count(distinct c.actor_user_id) from tb_book_comment c  

select 
	u.mbti,
	c.book_id,
	info.name,
	count(*) total
from 
	( 
		(
			select 
				c.book_id,
				c.actor_user_id
			from tb_book_comment c 
		)
		union 
		(
			select 
				c.book_id,
				c.actor_user_id
			from tb_reader_action c 
		)
	) as c
	inner join DB_20130705_MBTI.mbti_user_detail u on c.actor_user_id=u.uid 
	inner join tb_book_info info on c.book_id=info.book_id
group by c.book_id,u.mbti HAVING count(*) >3
order by u.mbti asc,total desc

