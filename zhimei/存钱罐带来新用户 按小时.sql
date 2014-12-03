select hour(add_time) hour,count(*) new_user from user_reg where add_time>'2012-06-28' and eid=-1 and locate('edm',code)=0 group by hour(add_time)
union
select hour(add_time) hour,count(*) new_user from user_reg where add_time>'2012-06-28' and eid=-1 and locate('edm',code)>0 group by hour(add_time);