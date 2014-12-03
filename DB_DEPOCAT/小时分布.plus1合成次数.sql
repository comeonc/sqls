select a.h '小时',a.n '09-18', b.n '09-19', c.n '09-20', d.n '09-12', e.n '09-22' from 
(
	select HOUR(create_time) h, count(1) n  from tb_plus1_compose where create_time>='2014-09-18' and create_time<'2014-09-19' GROUP BY  h
)a left join 
(
	select HOUR(create_time) h, count(1) n  from tb_plus1_compose where create_time>='2014-09-19' and create_time<'2014-09-20' GROUP BY  h
)b on a.h=b.h	left join 
(
	select HOUR(create_time) h, count(1) n  from tb_plus1_compose where create_time>='2014-09-20' and create_time<'2014-09-21' GROUP BY  h
)c on a.h=c.h		left join 
(
	select HOUR(create_time) h, count(1) n  from tb_plus1_compose where create_time>='2014-09-21' and create_time<'2014-09-22' GROUP BY  h
)d on a.h=d.h		left join 
(
	select HOUR(create_time) h, count(1) n  from tb_plus1_compose where create_time>='2014-09-22' and create_time<'2014-09-23' GROUP BY  h
)e on a.h=e.h	


