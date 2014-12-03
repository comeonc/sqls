select e.id e_id, c.id c_id, e.user_id e_uid, c.user_id c_uid, e.`code` e_code, c.`code` c_code, e.code_pass e_pass, c.code_pass c_pass, e.add_time from	
saving_goods_code c left join 
(
	select
		e.id,
		e.user_id,
		SUBSTRING(e.exchange_info,LOCATE('"id"',e.exchange_info)+5,LOCATE('"subareaId"',e.exchange_info)-LOCATE('"id"',e.exchange_info)-6) code_id,
		SUBSTRING(e.exchange_info,LOCATE('"code"',e.exchange_info)+8,LOCATE('"codePass"',e.exchange_info)-LOCATE('"code"',e.exchange_info)-10) 'code',
		SUBSTRING(e.exchange_info,LOCATE('"codePass"',e.exchange_info)+12,LOCATE('"expireTime"',e.exchange_info)-LOCATE('"codePass"',e.exchange_info)-14) code_pass,
		e.add_time
	from saving_goods_exchange_logs e where goods_id=71  
) e on  c.id=e.code_id where c.goods_id=71 and c.user_id>0 and e.id is null;

