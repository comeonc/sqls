select a.days, a.num '红点', b.num '月饼', c.num '老板', d.num '外快', e.num '拍马屁', f.num '办公室', g.num 'ceo' from
(
	select date(create_time) days, count(1) num from tb_plus1_compose group by days 
) as a 
left join 
(
	select date(create_time) days, count(1) num from tb_plus2_compose group by days 
) as b on a.days=b.days
left join 
(
	select date(create_time) days, count(1) num from tb_tusi_game_finish where game='boss' group by days 
) c on a.days=c.days
left join 
(
	select date(create_time) days, count(1) num from tb_tusi_game_finish where game='money' group by days 
) d on a.days=d.days
left join 
(
	select date(create_time) days, count(1) num from tb_tusi_game_finish where game='pee' group by days 
) e on a.days=e.days
left join 
(
	select date(create_time) days, count(1) num from tb_tusi_game_finish where game='office' group by days 
) f on a.days=f.days
left join 
(
	select date(create_time) days, count(1) num from tb_tusi_game_finish where game='ceo' group by days 
) g on a.days=g.days

order by a.days desc 


