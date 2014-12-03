select count(*) , '总用户' from user
union
select count(*) , '处理用户' from user_head_pic
UNION
select count(*) , '总收集' from shares
UNION
select count(*) , '处理收集' from shares_pic