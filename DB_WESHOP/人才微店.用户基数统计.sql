select count(1),'进入用户' from tb_weshop_user 
union 
select count(1),'有关注用户' from tb_weshop_user_wei
union
select count(1),'关注中用户' from tb_weshop_user_wei where subscribe=1
union
select count(1),'封禁用户' from tb_weshop_user where audit_status=5
union
select count(1),'大街用户' from tb_weshop_user where dajie_uid>0