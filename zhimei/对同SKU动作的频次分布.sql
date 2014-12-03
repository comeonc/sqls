select num,count(num) from 
(
   select count(*) num from reshares where add_time>'2012-09-22' GROUP BY user_id,share_id
) n group by num order by num asc 