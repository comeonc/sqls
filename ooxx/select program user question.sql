SELECT user_question.id as 问题ID, 
	user_question.user_id as 用户ID, 
	CASE user_question.user_id
		when 1643 THEN '傅正义'
		when 2636 THEN '张凯'
		when 2631 THEN '闻彬'
		when 2698 THEN '植萌'
		when 30005 THEN '艳丽'
		when 32131 THEN '秋月'
		when 2627 THEN '择一'
		when 2651 THEN '宋宇'
		when 2643 THEN '忠涛' 
		when 2802 THEN '艳辉'
		when 63657 THEN '何夏怡1'
		when 2438 THEN '何夏怡'
		else user_question.user_id
		END as 用户名,
	DATE(user_question.create_time) as 提问日期,
	TIME(user_question.create_time) as 提问时间, 
	user_question.total_need as 最大投票, 
	user_question.vote_count as 总投票, 
	user_question.real_vote_count as 真实投票, 
	user_question.comment_times as 评论数, 
	FLOOR(user_question.comment_times * 10000 / user_question.real_vote_count)/100.0 as 评论率,
	user_question.reply_times as 会话, 
	user_question.real_votegood as 真实好票, 
	user_question.real_voteabstain as 真实弃权,
	user_question.real_votebad as 真实坏票,
	user_question.audit_type as 审核,
	user_question.content 问题描述, 
	CONCAT("http://ooxx.com/upload",user_question.image_url) as 图片地址
FROM user_question
WHERE user_id in (
1643,   #傅瑞清 @傅正义
2636,   #欢欢和老虎 @张凯
2631,   #wenbin快乐 @闻彬
2698,   #@植萌
30005,  #Yanli @艳丽
32131,  #双鱼流沙 @秋月
2627,   #李泽一 @择一
2651,   #@宋宇
2643,   #蝈蝈叫_vep @忠涛
2802,   #_心境如水 @艳辉
63657,  #水水 @何夏怡
2438    #你才小受你全家小受 @何夏怡
) AND create_time>DATE(DATE_ADD(now(), INTERVAL -5 DAY) )
ORDER BY 提问日期 desc, user_id ASC, 评论率 DESC