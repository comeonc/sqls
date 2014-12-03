
#直接注册用户详细信息
select uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co, 
	http_c, http_u,user_reg.ip, user_reg.email,user_reg.add_time
from user_reg 
where 
	add_time>'2012-07-11'  and add_time<'2012-07-12'
	and code like "ad%" 
order by http_u asc, task asc, co  asc

#直接注册用户详细信息 同一个客户端，重复注册
select uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co, 
	http_c, http_u,user_reg.ip, user_reg.email,user_reg.add_time
from user_reg 
where 
	add_time>'2012-07-10'  and add_time<'2012-07-11'
	and code like "ad%" and http_u in
(
	select http_u  from user_reg  where 
		add_time>'2012-07-10'  and add_time<'2012-07-11'
		and code like "ad%" group by http_u having count(http_u)>1 
)
order by http_u asc, task asc, co  asc


#直接注册用户统计信息
select t.task ,t.co, date(r.add_time) add_date, count(*) as '人数' from 
(
	select uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co from user_reg where code like "ad%" and add_time>'2012-07-06'
) t  inner join user_reg r on t.uid=r.invite_id group by t.task,t.co, date(r.add_time) order by add_date asc, task asc, co asc;


#传播带来用户详细信息
select r.uid, t.task, t.co, r.invite_id, r.email, r.`code`, r.add_time, r.ip, r.http_c, r.http_u from 
(
	select uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co from user_reg where code like "ad%" and add_time>'2012-07-06'
) t  inner join user_reg r on t.uid=r.invite_id order by add_time;


#传播带来用户统计信息
select date(r.add_time) r_add_date,  a.task i_task, a.co i_co, count(*) totals FROM
(
	select date(add_time) add_date, uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co 
	from user_reg 

	where add_time>'2012-09-11'  and add_time<'2012-09-12'

	and code like "ad%" order by task asc, co asc, add_date asc
) a inner join user_reg r on r.add_time>'2012-09-11'  and  a.uid=r.invite_id
group by i_task, i_co, date(r.add_time) order by r_add_date asc, i_task asc, i_co asc
