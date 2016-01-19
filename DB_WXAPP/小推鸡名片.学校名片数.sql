select 
	school_name,
	count(1) num 
from tb_xtj_user_edu
GROUP BY school_name order by num desc limit 200