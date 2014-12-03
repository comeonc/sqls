#完成任务，但没有获得积分的用户ID
select a.entity_id uid from
(
	#只完成一次任务的完成用户ID
	select entity_id from saving_count_relation_type where relate_id=33 and type=401 and number=311101
)a 
left join 
(
	#获得积分的用户ID
	select user_id from saving_task_message_logs where task_id=33
)b on a.entity_id=b.user_id
where b.user_id is null

