select 
	DATE_FORMAT(start_date,'%Y') as 'startyear',
	DATE_FORMAT(end_date,'%Y') as 'endyear',
	count(1) num 
from tb_xtj_user_edu
GROUP BY startyear,endyear order by num desc limit 200