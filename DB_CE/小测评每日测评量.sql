select date(l.add_time) days, e.id, e.evaluate_name as name, count(1) total 
from tb_evaluate_log l  left join tb_evaluation e on l.evaluation_id=e.id 
where l.add_time>'2013-10-01' and l.is_finish=1 GROUP BY id order by days asc, total desc