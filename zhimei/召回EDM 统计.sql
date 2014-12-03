select 
	date(send_time) '发送日期',
	case flag
		when 0 then '未查看'
		when 1 then '有返回'
		when 2 then '已查看'
	end as '类型',
	count(*) as '数目'
from mail_send_record group by mail_send_record.flag,date(send_time) order by '发送日期' asc, '类型' asc