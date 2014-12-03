select p.eid, p.img, p.img_store, s.pic_original,
CONCAT('http://b.imimg.cn',s.pic_original) new_img,
CONCAT('/data/web/b.imimg.cn',s.pic_original) new_img_store

from surprise_promotion p left join reshares r on p.eid=r.id left join shares s on r.share_id=s.id;


update surprise_promotion p ,reshares r , shares s
set
	p.img=CONCAT('http://b.imimg.cn',s.pic_original) ,
	p.img_store=CONCAT('/data/web/b.imimg.cn',s.pic_original),
where
	p.eid=r.id and r.share_id=s.id