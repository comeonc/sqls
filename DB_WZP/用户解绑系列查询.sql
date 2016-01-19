#select * from tb_wzp_corp_info where corp_id=4307595;
#select * from tb_weixin_auth_config where id =8;
#select * from tb_wzp_user where auth_config_id=8 and dajie_uid=880225

select * from tb_wzp_user u  left join tb_weixin_auth_config a on u.auth_config_id=a.id where dajie_uid=880225