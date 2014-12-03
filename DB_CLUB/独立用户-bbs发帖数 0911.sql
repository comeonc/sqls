SELECT date(create_date) days, author_id,0911
 FROM tb_discuss_topic  WHERE create_date>'2013-05-01' group by days,author_id