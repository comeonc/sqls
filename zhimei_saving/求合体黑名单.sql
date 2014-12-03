select b.user_id,b.combination_success_num as '合体数',u.nickname from
(
	select a.user_id,a.combination_success_num from
	(
		select user_id,combination_success_num from saving_task_combination_user_profile where task_id=35 order by combination_success_num desc limit 400 
	) a
	inner join saving_user_cheat c on a.user_id=c.id
)b inner join zhimei.user u on b.user_id=u.id ;



select b.user_id,b.combination_success_num as '合体数',u.nickname from
(
	select a.user_id,a.combination_success_num from
	(
		select user_id,combination_success_num from saving_task_combination_user_profile where task_id=51 order by combination_success_num desc limit 400 
	) a
	inner join saving_user_cheat c on a.user_id=c.id
)b inner join zhimei.user u on b.user_id=u.id ;