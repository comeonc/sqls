select subarea_id, date(add_time),action_type,sum(coin_number) 
from saving_user_coin_logs 
where id>=526377 
group by date(add_time),action_type,subarea_id order by subarea_id asc, date(add_time) asc,action_type asc;