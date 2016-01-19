select days,count(1)as num from
(
select date(create_date) days from tb_base_apply_0 where id>5700166 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_1 where id>6022851 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_2 where id>5703846 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_3 where id>6020836 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_4 where id>5702514 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_5 where id>6023048 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_6 where id>5701308 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_7 where id>6021357 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_8 where id>5701065 and  action_src like 'wzp_%'
union
select date(create_date) days from tb_base_apply_9 where id>6023082 and  action_src like 'wzp_%'
) as a group by a.days