/* 统计某个客户的发送总计 */
select s.`name`, stat.* from 
(
select 
	supplier_id,
	sum(`submit_count`) as '总条数', 
	sum(`success_count`) as '成功条数',
	sum(`fail_count`) as '失败条数' ,
	sum(submit_count)-sum(success_count)-sum(fail_count) '未知条数',

	sum(`submit_piece`) as '提交分片数' ,
	sum(`success_piece`) as '成功分片数' ,
	sum(`fail_piece`) as '失败分片数' ,
	sum(submit_piece)-sum(success_piece)-sum(fail_piece) '未知分片'

from `sms_down_supplier_daily` 
/*where `account_id`=16 */
group by
	supplier_id
) as stat left join supplier s on stat.supplier_id=s.id