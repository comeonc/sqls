select u.days, u.total ' 新增用户', ul.total '当日帖子' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6005160 and u.type=1 group by days ) as u
left join 
(select date(p.create_date) days,count(1) total from tb_post p left join tb_user u on p.uid=u.id where u.company_id=6005160 group by days ) as ul
on u.days=ul.days order by u.days  desc  