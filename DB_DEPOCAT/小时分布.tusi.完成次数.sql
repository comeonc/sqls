select a.h 'h', a.num '10-05', b.num '10-06', c.num '10-07', d.num '10-08', e.num '10-09' from
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-10-05' and create_time<'2014-10-06' group by h)
a  left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-10-06' and create_time<'2014-10-07' group by h)
b on a.h=b.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-10-07' and create_time<'2014-10-08' group by h)
c on a.h=c.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-10-08' and create_time<'2014-10-09' group by h)
d on a.h=d.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-10-09' and create_time<'2014-10-10' group by h)
e on a.h=e.h