select ap,sum(total)n from
(
	select 
	case
		when ap<10 then ap
		when ap>=10 and ap<100 then FLOOR(ap/10)*10
		when ap>=100 and ap<300 then FLOOR(ap/20)*20
		when ap>=300 and ap<1000 then FLOOR(ap/50)*50
		when ap>=1000 then FLOOR(ap/500)*500
	end as ap,
	total from
	(
		select ap_20120102 ap,count(*) as total from 
			profile_active_point_week_2012 where ap_20120102>0 group by ap_20120102 order by ap_20120102 
	)as a
) as b group by ap order by ap 