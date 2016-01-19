select q.id,q.title,q.knowledge,q.pic,a.title, a.answer_type  from (
select q.id, q.title, q.knowledge,q.pic  from tb_question q inner join `tb_question_skilltag` qs on q.id=qs.qid where q.`status`=1 and qs.skill_title='行政管理' GROUP BY q.id order by 	q.id desc limit 100
) as q inner join tb_answer a on q.id=a.qid where a.`status`<2