select subarea, add_date,type,task,count(*) total from
(
select  
	case 
		when LOCATE('edm',code)>0 then SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) 
		else SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-3),'_',1) 
	end as subarea,
	case 
		when LOCATE('edm',code)>0 then SUBSTRING_INDEX(code,'_',-1) 
		else SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) 
	end as task,
	case 
		when LOCATE('ad',code)>0 then 'ad'
		when LOCATE('edm',code)>0 then 'edm'
		ELSE 'invite'
	end as type,
	DATE(add_time) add_date
	from user_reg 
where add_time>'2012-07-22' and eid=-1 
) a group by subarea, task,type,add_date order by subarea asc,  add_date asc, type asc, task asc
