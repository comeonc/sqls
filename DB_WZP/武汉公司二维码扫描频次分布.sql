select  total '扫描频次',count(1) '人数'  from 
(
select open_id, count(1) total FROM
	tb_wzp_receive_message
WHERE
	id > 145965
AND auth_config_id = 254 and type=102 group by open_id 
) as a group by a.total order by total desc