select * from 
(
	#读书.想读  
	SELECT '读书.想读' as '类型', DATE(update_time) days, COUNT(1) times, COUNT(DISTINCT actor_user_id) users FROM `tb_reader_action`   
	WHERE update_time >'2013-06-01' and update_time<'2014-01-01' and  action_type = 1 GROUP BY DATE(update_time)

	union

	#读书.已读  
	SELECT '读书.已读' as '类型', DATE(update_time) days, COUNT(1) times, COUNT(DISTINCT actor_user_id) users FROM `tb_reader_action`   
	WHERE update_time >'2013-06-01' and update_time<'2014-01-01' and  action_type = 2 GROUP BY DATE(update_time)

	union

	#读书.推荐  
	SELECT '读书.推荐' as '类型', DATE(update_time) days, COUNT(1) times, COUNT(DISTINCT actor_user_id) users FROM `tb_book_comment`    
	WHERE update_time >'2013-06-01' and update_time<'2014-01-01' and  comment_type = 2 GROUP BY DATE(update_time) 

	union

	#读书.评论  
	SELECT '读书.评论' as '类型', DATE(update_time) days, COUNT(1) times, COUNT(DISTINCT actor_user_id) users FROM `tb_book_comment`    
	WHERE update_time >'2013-06-01' and update_time<'2014-01-01' and  comment_type = 1 GROUP BY DATE(update_time) 

) as stat order by days  
