select date(create_date) days,count(1) total from `tb_wzp_user` where auth_config_id=8 group by days order by days;