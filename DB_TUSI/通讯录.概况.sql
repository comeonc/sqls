select '总' as '时间', count(DISTINCT uid) '总人数', count(1) '通讯录条目' from tb_user_contacts
union 
(select date(create_date) as `时间`, count(DISTINCT uid) '总人数', count(1) '通讯录条目' from tb_user_contacts where create_date>'2014-12-20' group by `时间` )