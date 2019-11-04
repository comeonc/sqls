/*统计send提交时间*/
select send_using,count(1) as total from `sms_down_batch_170308` group by send_using;
