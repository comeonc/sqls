drop table if exists core_user_login_all;

create table core_user_login_all select * from zhimei.core_user_login where add_date>='2012-08-10';
alter table core_user_login_all add column type int default 0;
update core_user_login_all l, zhimei.user_reg r set l.type=1 where l.user_id=r.uid and r.eid=-1;


select type,
	case type
		when 0 then '主站'
		when 1 then '存钱罐'
		else type
	end as '类型',
login_times,count(login_times) users FROM
(
	select type,count(user_id) as login_times from core_user_login_all group by type,user_id
) as a group by type,login_times order by type asc, login_times asc;