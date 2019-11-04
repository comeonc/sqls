select
	supplier_status '发送状态',
	case supplier_status
		when 0 then '无发送/服务商无返回'
		when 1 then '服务商返回成功'
		when 2 then '服务商返回失败'
		when 3 then '发送中'
		when 4 then '失败'
	end as '发送状态2',
	sum(total_piece) '分片积分数',
	count(1) '请求条数',
	content
from
	sms_down_batch_170328
where customer_id=17
group by
	supplier_status ,
	content
ORDER BY
	content ,
	supplier_status