select a.add_date,  a.times total, b.times answered  from 
(
select date(add_time) add_date ,count(add_time) times from seeu_my_question group by date(add_time)
) a left join 
(
select date(add_time) add_date ,count(add_time) times from seeu_my_question where flag=1 group by date(add_time)
) b on a.add_date=b.add_date

