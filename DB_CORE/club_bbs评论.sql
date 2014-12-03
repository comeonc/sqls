SELECT date(create_date) days, COUNT(*) total FROM tb_comment WHERE   TYPE='club_discuss'  AND create_date>='2013-03-01' group by days
