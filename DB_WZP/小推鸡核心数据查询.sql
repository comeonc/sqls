select 
     ta.days as stat_date
    ,case when tb.push_all_cnt is null then 0 else tb.push_all_cnt end as '公推人数'
    ,case when tc.total_all_cnt is null then 0 else tc.total_all_cnt  end as '总转发人数'
    ,case when tc.push_zhuan_all_cnt is null then 0 else tc.push_zhuan_all_cnt end as '公推人转发人数'
    ,case when tc.inner_zhuan_all_cnt is null then 0 else tc.inner_zhuan_all_cnt end as '内推转发数'
    ,case when tc.common_zhuan_all_cnt is null then 0 else tc.common_zhuan_all_cnt end as '普通中间人转发人数'
    ,case when te.card_all_user_cnt is null then 0 else te.card_all_user_cnt end as '候选人名片数'
    ,case when tf.apply_all_cnt is null then 0 else tf.apply_all_cnt end as '投递次数'
    ,case when tf.apply_all_user_cnt is null then 0 else tf.apply_all_user_cnt end as '投递人数'
    ,case when ti.used_all_amount is null then 0 else ti.used_all_amount end as '红包已发放钱数'
    ,case when ti.red_all_user_cnt is null then 0 else ti.red_all_user_cnt end as '红包发放人数'
from 
(
	SELECT
		distinct(date(create_date)) as days
	from tb_wzp_last_access
	where create_date > '2015-09-25'
) as ta left join
(   
    select 
        1001780 as 'corp_id'
        ,count( distinct open_id ) as push_all_cnt 
        ,date(create_date) as days 
    from tb_xtj_official_broker
    where activity_id=4 and status = 1
    group by date(create_date)
) tb on ta.days=tb.days left join 
(
    select 
        count( distinct open_id) as total_all_cnt 
        ,count( distinct case when role=3 then open_id end ) as push_zhuan_all_cnt 
        ,count(  case when role=1 then open_id end ) as inner_zhuan_all_cnt 
        ,count( distinct case when role=2 then open_id end ) as common_zhuan_all_cnt 
        ,date(create_date) as days
    from tb_xtj_zhuan
    where activity_id=4
    group by date(create_date)
) tc on (tb.days=tc.days) left join 
(
    select
        count(distinct open_id) as card_all_user_cnt  
        ,date(create_date) as days
    from 
        tb_xtj_interest_corp where  corp_id=1001780
    group by date(create_date)
) te on tb.days=te.days left join 
(
    select 
        count(1) as apply_all_cnt 
        ,count(distinct(open_id)) as apply_all_user_cnt  
		,date(create_date) as days
    from tb_xtj_interest_job
    where activity_id= 4
    group by date(create_date)
) tf on tb.days=tf.days left join 
(
    select 
        count(distinct open_id ) as red_all_user_cnt 
        ,sum(amount) as used_all_amount 
        ,date(create_date) as days
    from tb_xtj_user_envelope
    where source != 14 and activity_id= 4
    group by date(create_date)
) ti on tb.days = ti.days 



