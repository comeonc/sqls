select p.id,p.user_type,p.uid,concat(date(p.create_date),'.',hour(p.create_date)) ,
p.content,pc.comment_cnt,'-',pc.comment_cnt_op,pc.praise_cnt,pc.praise_cnt_op,'-',p.address,p.`status`

from tb_post p inner join tb_post_count pc on p.id=pc.id
where p.company_id=6005160
order by id desc   