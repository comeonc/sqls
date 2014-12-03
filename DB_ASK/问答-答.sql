SELECT date(b.create_date) days, COUNT(*) total  FROM tb_question a,tb_answer b WHERE a.qid=b.qid AND  b.create_date>='2013-03-01' group by days
