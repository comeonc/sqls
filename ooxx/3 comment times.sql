select qv.vote_user_id userId,count(qv.vote_user_id) num, u.username,u.openplatform,u.uid from question_vote qv left join user u on qv.vote_user_id=u.id where u.user_type=1 and qv.vote_comments is not null and qv.vote_comments<> ""
 group by qv.vote_user_id order by num desc limit 20
