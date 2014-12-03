select r.board_id,count(r.board_id) total 

from shares s left join zhimei_query.shares_category c on s.id=c.share_id left join reshares r on s.reshare_id=r.id 


where c.share_id is null

group by r.board_id order by total desc limit 1000;