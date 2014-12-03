SELECT date(c.create_date) days, c.uid ,1312
FROM tb_question a,tb_answer b,tb_answer_comment c WHERE  a.qid=b.qid AND b.qid=c.qid AND b.aid=c.aid AND c.create_date>='2013-05-01' group by days,c.uid