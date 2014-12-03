SELECT s.task_id, 
	s.vest_user_id, 
	s.combin_num, 
	u.nickname, 
	u.email, 
	u.add_time
FROM saving_task_combination_vest_user_seed s LEFT OUTER JOIN zhimei.`user` u ON s.vest_user_id = u.id where s.task_id=51 order by s.combin_num desc 