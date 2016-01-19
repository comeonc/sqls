select '公司二维码扫描', sum(total) '扫描次数',count(distinct corp_id) '被扫描公司数' ,count(distinct open_id) as '扫描人数' from 
(
select SUBSTRING_INDEX(content_add,"_",-1) as corp_id ,count(1) as total ,open_id FROM
	tb_wzp_receive_message
WHERE
	id > 145965
AND auth_config_id = 254 and type=102 group by corp_id ,open_id
) as a where a.corp_id<> '660002'