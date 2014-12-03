select 
	s.id,
	s.pic_original,
	sp.pic_large,
	CONCAT(SUBSTRING_INDEX(sp.pic_large,'.',1),'.',SUBSTRING_INDEX(SUBSTRING_INDEX(s.pic_original,'.',2),'.',-1),'.',SUBSTRING_INDEX(sp.pic_large,'.',-3)) as c
from shares s inner join share_pic sp on s.id=sp.id limit 20;

update shares s ,share_pic sp 
	set s.pic_original=
		CONCAT(SUBSTRING_INDEX(sp.pic_large,'.',1),'.',SUBSTRING_INDEX(SUBSTRING_INDEX(s.pic_original,'.',2),'.',-1),'.',SUBSTRING_INDEX(sp.pic_large,'.',-3)) 
where s.id=sp.id ;