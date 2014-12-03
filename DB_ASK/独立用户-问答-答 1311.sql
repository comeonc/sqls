SELECT date(b.create_date) days, b.uid,1311
  FROM tb_question a,tb_answer b WHERE a.qid=b.qid AND  b.create_date>='2013-05-01' group by days,b.uid
