select m.open_id,u.dajie_uid,u.create_date from tb_wzp_user u inner join 
( 
	select distinct open_id from `tb_wzp_receive_message` where auth_config_id=254 and content_add ='qrscene_region_i_660002'
) as m on u.open_id=m.open_id where u.dajie_uid>0