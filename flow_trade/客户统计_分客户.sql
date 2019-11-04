/* 统计某个客户的发送总计 */
select 
	account_id,
	case account_id
		when 3 then '秒信测试'
		when 8 then '野狗'
		when 15 then '南鸽科技-联电'
		when 16 then '南鸽科技-移动'
		when 17 then '龙图游戏-营销'
		when 18 then '软通动力'
	end as '客户' ,
	sum(`submit_count`) as '总条数', 
	sum(`success_count`) as '成功条数',
	sum(`fail_count`) as '失败条数' ,
	sum(submit_count)-sum(success_count)-sum(fail_count) '未知条数',

	sum(`submit_piece`) as '提交分片数' ,
	sum(`success_piece`) as '成功分片数' ,
	sum(`fail_piece`) as '失败分片数' ,
	sum(submit_piece)-sum(success_piece)-sum(fail_piece) '未知分片'


from `sms_down_customer_daily` 
/*where `account_id`=16 */
group by
	account_id