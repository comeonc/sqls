insert into reshares_size
select 
	r.id rid,
	s.id sid, 
	r.board_id bid, 
	s.pic_original, 
	SUBSTRING_INDEX(SUBSTRING_INDEX(s.pic_original,'.',-3),'.',1) x , 
	SUBSTRING_INDEX(SUBSTRING_INDEX(s.pic_original,'.',-2),'.',1) y   
from reshares r left join shares s on r.share_id=s.id 
where r.board_id=8071