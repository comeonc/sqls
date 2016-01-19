select 
	college,
	count(1) num 
from tb_xtj_user_edu
GROUP BY college order by num desc limit 200