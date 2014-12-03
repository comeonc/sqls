select a.* from (
SELECT send_uid, count(1) '私信条数' from tb_user_session_info where send_user_type = 1 and create_date>'2014-09-18'  GROUP BY send_uid  order by count(1)  desc 
) a left join tb_user u on a.send_uid=u.id
where u.`status`<4  and u.type=1