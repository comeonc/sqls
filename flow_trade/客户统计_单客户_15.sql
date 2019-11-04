SELECT
sum(submit_count) '提交条数',
sum(success_count) '成功条数',
sum(fail_count) '失败条数',
sum(submit_count)-sum(success_count)-sum(fail_count) '未知条数',

sum(submit_piece) '提交分片',
sum(success_piece) '成功分片',
sum(fail_piece) '失败分片',
sum(submit_piece)-sum(success_piece)-sum(fail_piece) '未知分片',

sum(error_count) '错误条数',
sum(pending_count) '测试条数'

FROM
sms_down_customer_daily
where account_id=15