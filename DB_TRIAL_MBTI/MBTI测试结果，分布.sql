select result_type,count(result_type) total from
(
	select result_type from mbti_result where add_time>'2013-10-10' and flag=1 group by user_id
) a group by result_type order by total desc 