select w.nick_name, a.total '扫描次数'  from 
(
select open_id, count(1) total FROM
	tb_wzp_receive_message
WHERE
	id > 145965
AND auth_config_id = 254 and type=102 group by open_id order by total desc limit 30
) as a inner join tb_wzp_user_wei w on a.open_id=w.open_id