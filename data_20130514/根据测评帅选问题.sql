select 
	m.user_id,m.result_type, t.type_describe, q.qid,q.`subject`,q.hot,
	#q.answer_count,q.comment_count,q.follow_count,q.old_point,
	q.create_date 
from mbti_result m left join tb_question q on m.user_id=q.uid and m.flag=1 left join mbti_type t on m.result_type=t.id
where q.qid>0 and q.`status`=2 order by m.result_type,q.hot desc 