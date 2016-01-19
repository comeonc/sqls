select 
	major_name,
	count(1) num 
from tb_xtj_user_edu
GROUP BY major_name order by num desc limit 200