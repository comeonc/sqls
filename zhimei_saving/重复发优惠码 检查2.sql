select c.id c_id, c.user_id c_uid, e.e_code, e.e_pass,e.`重复数`,c.add_time from 
(
	select e.code_id e_code_id, e.`code` e_code, e.code_pass e_pass,count(*) '重复数' from	
	(
		select
			e.id,
			e.user_id,
			SUBSTRING(e.exchange_info,LOCATE('"id"',e.exchange_info)+5,LOCATE('"subareaId"',e.exchange_info)-LOCATE('"id"',e.exchange_info)-6) code_id,
			SUBSTRING(e.exchange_info,LOCATE('"code"',e.exchange_info)+8,LOCATE('"codePass"',e.exchange_info)-LOCATE('"code"',e.exchange_info)-10) 'code',
			SUBSTRING(e.exchange_info,LOCATE('"codePass"',e.exchange_info)+12,LOCATE('"expireTime"',e.exchange_info)-LOCATE('"codePass"',e.exchange_info)-14) code_pass,
			e.add_time
		from saving_goods_exchange_logs e where goods_id=71 
	) e where code_id <> ""  group by e.code_pass having count(*) >1 order by e.code_pass
) e inner join 
(
	select
		e.id,
		e.user_id,
		SUBSTRING(e.exchange_info,LOCATE('"code"',e.exchange_info)+8,LOCATE('"codePass"',e.exchange_info)-LOCATE('"code"',e.exchange_info)-10) 'code',
		SUBSTRING(e.exchange_info,LOCATE('"codePass"',e.exchange_info)+12,LOCATE('"expireTime"',e.exchange_info)-LOCATE('"codePass"',e.exchange_info)-14) code_pass,
		e.add_time
	from saving_goods_exchange_logs e where goods_id=71 
)c on e.e_code=c.`code` and e.e_pass=c.code_pass order by c.code_pass