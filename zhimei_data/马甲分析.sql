

#0.0 清空现有数据：zhimei_data
USE zhimei_data;
#0.1 清空现有数据：user_cheat
TRUNCATE TABLE user_cheat;
#0.2 清空现有数据：user_reg
TRUNCATE TABLE user_reg;
#0.3 清空现有数据：core_user_login
TRUNCATE TABLE core_user_login;


#1.0 导入现有数据：core_user_login
insert into core_user_login select * from zhimei.core_user_login 
	where user_id>1600000;					########################################################################################################
#1.1 导入现有数据：user_reg
insert into user_reg select * from zhimei.user_reg 
	where uid>=1600000;						########################################################################################################

#0.4 清理现有数据：user_cheat_logs
TRUNCATE TABLE user_cheat_logs;
#2.0 邀请的未登录用户，超过十个
insert into user_cheat_logs(user_id,invite_id,flag) 
select r.uid,r.invite_id,1 from user_reg r
inner join ( 
	select r.invite_id from user_reg r  
	left join core_user_login l on r.uid=l.user_id 
	where invite_id>0 and r.eid=-1 and l.user_id is  null group by r.invite_id having count(r.invite_id)>10
) a on r.invite_id=a.invite_id
left join core_user_login l on r.uid=l.user_id 
	where r.invite_id>0 and r.eid=-1 and l.user_id is  null;
#2.1 邀请的未登录用户，超过十个，作弊账号导入 被邀请
insert IGNORE into user_cheat(id,flag)
select distinct(id),21 from 
(
	select user_cheat_logs.user_id id from user_cheat_logs where user_cheat_logs.user_id>0
) a ;
#2.2 邀请的未登录用户，超过十个，作弊账号导入 邀请人
insert IGNORE into user_cheat(id,flag)
select distinct(id),22 from 
(
	select user_cheat_logs.invite_id id from user_cheat_logs where user_cheat_logs.invite_id>0
) a ;


#0.4 清理现有数据：user_cheat_logs
TRUNCATE TABLE user_cheat_logs;
#2.2 同一个地址，注册超过10个
insert into user_cheat_logs(user_id,invite_id,flag)  
select user_reg.uid,user_reg.invite_id,2 from user_reg inner join (
	select http_u,count(http_u) from user_reg 
	where http_u is not null and http_u <> "" group by http_u having count(http_u)>10 order by http_u
) a on user_reg.http_u=a.http_u;
#2.3 导入到 user_cheat 被邀请
insert IGNORE into user_cheat(id,flag)
select distinct(id),23 from 
(
	select user_cheat_logs.user_id id from user_cheat_logs where user_cheat_logs.user_id>0
) a ;
#2.4 导入到 user_cheat 邀请人
#insert IGNORE into user_cheat(id,flag)
#select distinct(id),24 from 
#(
#	select user_cheat_logs.invite_id id from user_cheat_logs where user_cheat_logs.invite_id>0
#) a ;

#3.0 将作弊账号导入到存钱罐
insert ignore into zhimei_saving.saving_user_cheat
select id,flag,now() from user_cheat;






