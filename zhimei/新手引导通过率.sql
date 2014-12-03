 select * FROM
(
	(
		SELECT count(1) '人数', DATE(add_time) add_date,'a.未走新手引导' as '类型' FROM `user`    WHERE id>=891935 AND `guide_step` = 0 group by  DATE(add_time)  order by add_date
	)
	union
	(
		SELECT count(1) '人数', DATE(add_time) add_date,'b.引导第一步' as '类型' FROM `user`    WHERE id>=891935 AND `guide_step` = 1 group by  DATE(add_time)  order by add_date
	)
	union
	(
		SELECT count(1) '人数', DATE(add_time) add_date,'c.完成新手引导' as '类型' FROM `user`    WHERE id>=891935 AND `guide_step` > 1 group by  DATE(add_time)  order by add_date
	)
) as a order by add_date asc
