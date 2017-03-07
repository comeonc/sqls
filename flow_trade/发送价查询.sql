select
	'联通/电信' ,
	count(1),
	count(1) * 30 ,
	30001000 - count(1) * 30
from
	sms_down_batch
where
	customer_id = 15
union
	select
		'移动' ,
		count(1),
		count(1) * 32 ,
		27201000 - count(1) * 32
	from
		sms_down_batch
	where
		customer_id = 16