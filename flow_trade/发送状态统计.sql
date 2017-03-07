select
	date(create_date) days ,
	customer_id ,
	supplier_id ,
	operate_type ,
	supplier_status ,
	case customer_id
		when 15 then '南鸽科技-联电'
		when 16 then '南鸽科技-移动'
	end as '客户' ,
	case supplier_id
		when 1021 then '线上线下'
		when 1022 then '久佳-联电'
		when 1023 then '久佳-移动'
	end as '服务商',
	case operate_type
		when 0 then '未记录'
		when 1 then '移动'
		when 2 then '联通'
		when 3 then '电信'
	end as '运营商',
	case supplier_status
		when 0 then '无发送/服务商无返回'
		when 1 then '服务商返回成功'
		when 2 then '服务商返回失败'
	end as '发送状态',
	sum(total_piece) '分片积分数',
	count(1) '请求条数'
from
	sms_down_batch
where
	create_date > '2017-03-07'
and create_date < '2017-03-08'
group by
	days ,
	customer_id ,
	supplier_id ,
	supplier_status ,
	operate_type
ORDER BY
	days ,
	customer_id ,
	supplier_id ,
	operate_type ,
	supplier_status