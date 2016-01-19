select days,count(1)as num from
(
select date(create_date) days from tb_base_apply_0 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_1 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_2 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_3 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_4 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_5 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_6 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_7 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_8 where id>5600000 and  action_src='wzp_r_660001'
union
select date(create_date) days from tb_base_apply_9 where id>5600000 and  action_src='wzp_r_660001'
) as a group by a.days