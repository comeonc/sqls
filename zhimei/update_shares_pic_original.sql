select 
	s.id,
	sp.pic_original,
	sp.pic_large,
	CONCAT(
		'/original',
		SUBSTRING_INDEX(sp.pic_large,'.',1),
		'.o',
		SUBSTRING_INDEX(SUBSTRING_INDEX(sp.pic_original,'.',2),'.',-1),
		'.',
		SUBSTRING_INDEX(SUBSTRING_INDEX(sp.pic_large,'.',-3),'.',2),
		'.',
		SUBSTRING_INDEX(sp.pic_original,'.',-1)
	) as c
from shares s inner join old_share_pic sp on s.id=sp.id limit 20;



update shares s ,old_share_pic sp 
	set s.pic_original=
	CONCAT(
		'/original',
		SUBSTRING_INDEX(sp.pic_large,'.',1),
		'.o',
		SUBSTRING_INDEX(SUBSTRING_INDEX(sp.pic_original,'.',2),'.',-1),
		'.',
		SUBSTRING_INDEX(SUBSTRING_INDEX(sp.pic_large,'.',-3),'.',2),
		'.',
		SUBSTRING_INDEX(sp.pic_original,'.',-1)
	)  
where s.id=sp.id ;