SELECT 
	seeu_my_question.add_time, 
	seeu_my_question.user_id, 
	seeu_my_question.question, 
	seeu_my_question.answer, 
	seeu_my_question.flag
FROM seeu_my_question
WHERE 
	user_id=10002 or 
	user_id=10050 or 
	user_id=10090 or 
	user_id=11764 or 
	user_id=14895 or 
	user_id=10085 or 
	user_id=10002 or 
	user_id=10091 or 
	user_id=12303 or 
	user_id=11568 
order by user_id asc, add_time asc