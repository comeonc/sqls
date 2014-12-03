select u.days, u.total ' 新增用户', ul.total '当日登陆' from 
(select date(u.create_date) days, count(1) total from tb_user u where u.company_id=6005129 and u.type=1 group by days ) as u
left join 
(select date(ul.create_date) days,count(1) total from tb_user_login ul left join tb_user u on ul.uid=u.id where u.company_id=6005129 group by days ) as ul
on u.days=ul.days order by u.days  desc