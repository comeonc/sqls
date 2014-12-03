SELECT date(create_date) days, uid,0611 FROM tb_comment WHERE   `status`=1  AND create_date>='2013-05-01' and TYPE='club_discuss' group by days ,uid
