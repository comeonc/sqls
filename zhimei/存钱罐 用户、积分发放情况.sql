

select '新用户数',count(*) from user_reg where user_reg.eid=-1
union
select '总发放积分',sum(coin_total) from zhimei_saving.saving_user 
union
select '总剩余积分',sum(coin_number) from zhimei_saving.saving_user 
