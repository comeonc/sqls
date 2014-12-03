insert into zhimei_data.saving_coin_20120704
select a.user_id,a.coin_number from_coin_logs, b.coin_number from_profile, b.coin_20120705 , b.coin_20120704 from
(
select user_id,sum(coin_number) coin_number from saving_user_coin_logs where add_time>'2012-07-04' and add_time<'2012-07-05' and subarea_id=1 group by user_id
)a 
left join
(
select p5.id user_id ,p5.coin_number-IFNULL(p4.coin_number,0) coin_number , p5.coin_number coin_20120705, p4.coin_number coin_20120704 from saving_profile.saving_user_2012_07_05 p5 left join saving_profile.saving_user_2012_07_04 p4 on p5.id=p4.id and p5.subarea_id=1 and p4.subarea_id=1 group by p5.id
) b on a.user_id=b.user_id where a.coin_number<> b.coin_number order by ABS(a.coin_number - b.coin_number) desc 