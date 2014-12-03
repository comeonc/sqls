#ALTER TABLE mbti_user_entry ADD INDEX `user_id` (user_id, flag);

create table mbti_user_detail 
select 
	m.user_id as uid,
	t.id as 'type',
	t.type_describe as 'mbti',
	(((t.id - 1) & 8) ^ 8) >> 3   as 'E',
	(((t.id - 1) & 8) & 8) >> 3   as 'I',
	(((t.id - 1) & 4) & 4) >> 2   as 'N',
	(((t.id - 1) & 4) ^ 4) >> 2   as 'S',
	(((t.id - 1) & 2) & 2) >> 1   as 'T',
	(((t.id - 1) & 2) ^ 2) >> 1   as 'F',
	(((t.id - 1) & 1) & 1) >> 0   as 'J',
	(((t.id - 1) & 1) ^ 1) >> 0   as 'P'
 from mbti_result m  inner join mbti_type t on m.result_type=t.id where m.flag=1 group by user_id  #limit 100


