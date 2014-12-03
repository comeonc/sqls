#详细信息
	select date(add_time) add_date, uid, SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,SUBSTRING_INDEX(http_c,'_',-3) co 
	from user_reg 

	where add_time>'2012-07-11' and add_time<'2012-07-12'

	and code like "ad%" order by task asc, co asc, add_date asc

#统计信息
select  
	SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) task,
	SUBSTRING_INDEX(http_c,'_',-3) co ,
	count(*) users
	from user_reg 
	where add_time>'2012-09-11' and add_time<'2012-09-12'
and code like "ad%" 
group by 
	SUBSTRING_INDEX(SUBSTRING_INDEX(code,'_',-2),'_',1) ,
	SUBSTRING_INDEX(http_c,'_',-3)  
order by task asc, co asc