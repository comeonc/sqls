select a.days,'-',a.`新增用户`,'-',a.`当日登陆`,b.`真实帖子`,c.`灌水帖子`,d.`日评论` from 
(
select u.days days, u.total '新增用户', ul.total '当日登陆' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6000067 and u.type=1 group by days ) as u
left join 
(select date(ul.create_date) days,count(1) total from tb_user_login ul left join tb_user u on ul.uid=u.id where u.company_id=6000067 group by days ) as ul
on u.days=ul.days order by u.days  desc
) as a
inner join 
(
select u.days days, u.total '新增用户', ul.total '真实帖子' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6000067 and u.type=1 group by days ) as u
left join 
(select date(p.create_date) days,count(1) total from tb_post p left join tb_user u on p.uid=u.id where u.company_id=6000067 and p.user_type=1 group by days ) as ul
on u.days=ul.days order by u.days  desc
) as b on a.days=b.days
inner join 
(
select u.days days, u.total '新增用户', ul.total '灌水帖子' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6000067 and u.type=1 group by days ) as u
left join 
(select date(p.create_date) days,count(1) total from tb_post p left join tb_user u on p.uid=u.id where u.company_id=6000067 and p.user_type=2 group by days ) as ul
on u.days=ul.days order by u.days  desc
) as c on a.days=c.days
inner join 
(
select u.days, u.total '新增用户', ul.total '日评论' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6000067 and u.type=1 group by days ) as u
left join 
(select date(pc.create_date) days,count(1) total from tb_post_comment pc left join tb_user u on pc.uid=u.id where u.company_id=6000067 and  u.type=1 group by days ) as ul
on u.days=ul.days order by u.days  desc
) as d on a.days=d.days