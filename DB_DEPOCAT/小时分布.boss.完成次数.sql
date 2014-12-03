select a.h 'h', a.num '09-18', b.num '09-19', c.num '9-20', d.num '09-12', e.num '09-22' from
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-18' and create_time<'2014-09-19' and  game='boss' group by h)
a left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-19' and create_time<'2014-09-20' and  game='boss' group by h)
b on a.h=b.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-20' and create_time<'2014-09-21' and  game='boss' group by h)
c on a.h=c.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-21' and create_time<'2014-09-22' and  game='boss' group by h)
d on a.h=d.h left join 
(select hour(create_time) h,count(1) num  from tb_tusi_game_finish where create_time>'2014-09-22' and create_time<'2014-09-23' and  game='boss' group by h)
e on a.h=e.h