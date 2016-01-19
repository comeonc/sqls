select a.days, a.num '新到访', b.num '新粉丝', c.num '退订状态', e.num '发放积分', d.num '提现积分' from
( select date(create_time) days,count(1) num from tb_app_user_profile where app_id=10  GROUP BY days ) as a  left join 
( select date(create_time) days,count(1) num from tb_app_user_profile where app_id=10 and type=1 GROUP BY days ) as b on a.days=b.days left join
( select date(create_time) days,count(1) num from tb_app_user_profile where app_id=10 and type=2 and unsubscribe_times>0 GROUP BY days ) as c on a.days=c.days left join
( select date(create_time) days,sum(exchange_integral) num from tb_goods_apply GROUP BY days ) as d on a.days=d.days left join
( select date(create_time) days,sum(integral_change) num from tb_app_profile_integral where type<>5 GROUP BY days ) as e on a.days=e.days
order by a.days desc 