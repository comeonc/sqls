  
	select 
		g.id good_id, 
		g.goods_name,
		e.user_id,
		e.add_time exchange_time,
		a.mobile,
		a.qq,
		e.id exchange_id,
		a.id address_id,
		IF(c.id is not null,"作弊","")
	from 
		saving_goods_exchange_logs e 
		inner join saving_goods g on g.id=e.goods_id 
		left join saving_user_address a on e.address_id=a.id
		left join zhimei_data.user_cheat c on e.user_id=c.id
	where e.add_time>'2012-09-01' and (g.goods_type=1 or g.goods_type=4 or g.goods_type=5 or g.goods_type=6) 

	#order by g.id asc;
