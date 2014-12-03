select sum(u.coin_number) '总剩余', avg(u.coin_number) '平均剩余', sum(u.coin_total) '总发放', avg(u.coin_total) '平均发放', u.subarea_id '分区ID' 

from saving_user_cheat  c inner join saving_user u on c.id=u.id 
where c.flag=808
group by u.subarea_id;