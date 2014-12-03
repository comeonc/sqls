set @in=0;
select  @in :=@in+1 as 'index', t.*, u.nickname,u.avatar_original,u.avatar_cut_large from
(
	select p.user_id,p.combination_success_num '合体数', s.vest_user_id as '马甲'
	from saving_task_combination_user_profile p  
	left join saving_user_cheat c on p.user_id=c.id 
	left join saving_task_combination_vest_user_seed s on p.user_id=s.vest_user_id
	where p.task_id=81 and  c.id is null order by p.combination_success_num desc limit 50
) as t left join zhimei.user u on t.user_id=u.id;