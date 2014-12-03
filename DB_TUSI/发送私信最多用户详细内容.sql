
SELECT * from tb_user_session_info where  send_uid in (
4744192	,
4710596	,
4627653	,
4621883	,
4723387	,
4751979	,
4750031	,
4644575	,
4638019	,
4718434	,
4713152	,
4767278	,
4769930	,
4773804	,
4763456	,
4767158	,
4706569	




) and send_user_type = 1  and LENGTH(content)>20
order by send_uid, content
