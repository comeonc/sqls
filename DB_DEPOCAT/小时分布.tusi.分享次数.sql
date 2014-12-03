select a.h 'h', a.num '09-27', b.num '09-28', c.num '09-29' from
(select hour(create_time) h,count(1) num  from tb_tusi_game_share where create_time>'2014-09-27' and create_time<'2014-09-28' group by h)
a  left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_share where create_time>'2014-09-28' and create_time<'2014-09-29' group by h)
b on a.h=b.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_share where create_time>'2014-09-29' and create_time<'2014-09-30' group by h)
c on a.h=c.h