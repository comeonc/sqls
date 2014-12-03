select t.post_id,t.num, p.content,p.create_date,p.company_id from tb_post p inner JOIN
(
select post_id,count(post_id) num from tb_post_comment where type=1 and status <3 GROUP BY post_id HAVING count(post_id) >5 ORDER BY num desc limit 100
) t on p.id=t.post_id