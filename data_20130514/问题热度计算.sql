#修改表结构
ALTER TABLE `tb_question` 
	ADD COLUMN `hot` int DEFAULT '0' ,
	ADD COLUMN `follow_count` int DEFAULT '0',
	ADD COLUMN `answer_count` int DEFAULT '0' ,
	ADD COLUMN `comment_count` int DEFAULT '0' ,
	ADD COLUMN `old_point` int DEFAULT '0' ;

#填入关注数
update 
	tb_question q,
	(select qid,count(*) follow_count from tb_question_follow group by qid) as f
set q.follow_count=f.follow_count
where q.qid=f.qid

#填入回答数
update 
	tb_question q,
	(select qid,count(*) answer_count from tb_answer where `status`=2 group by qid) as f
set q.answer_count=f.answer_count
where q.qid=f.qid

#填入回答评论数
update 
	tb_question q,
	(select qid,count(*) comment_count from tb_answer_comment where `status`=2 group by qid) as f
set q.comment_count=f.comment_count
where q.qid=f.qid

#填入旧度值
update 
	tb_question q
set q.old_point=floor(POW(LOG2(TO_DAYS(create_date)-734850)-2,2)) 

#计算热度值
update 
	tb_question q
set q.hot=q.answer_count+q.comment_count*2+q.follow_count*2+q.old_point
