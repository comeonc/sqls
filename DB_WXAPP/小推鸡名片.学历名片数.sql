select 
	degree as '学历 10博士；12硕士；13本科；14专科',
	count(1) num 
from tb_xtj_user_edu
GROUP BY degree order by num desc limit 200