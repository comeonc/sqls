SELECT uq.id, 
	uq.user_id, 
	CONCAT("http://ooxx.com/upload",uq.image_url) as image_url, 
	uq.content, 
	uq.create_time, 
	uq.question_catalog, 
	uq.real_vote_count, 
	uq.comment_times, 
	uq.reply_times, 
	uq.real_votegood, 
	uq.real_votebad,
	u.sexual,
	u.birthday
FROM user_question uq left join user u on uq.user_id=u.id
WHERE uq.create_time>"2011-11-15"  and uq.create_time < "2011-12-16" and uq.question_catalog in (
9,10,14,4,5,8
)