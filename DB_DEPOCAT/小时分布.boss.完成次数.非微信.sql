select a.h 'h', a.num '09-11', b.num '09-12' from
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-11' and create_time<'2014-09-12' and profile_id=0 group by h)
a right join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-12' and create_time<'2014-09-13' and profile_id=0 group by h)
b on a.h=b.h

