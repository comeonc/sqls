 select date(result_time) days, count(*) total, flag from mbti_result where result_time>'2013-10-01'  and flag=1 group by days;