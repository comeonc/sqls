select date(result_time) days, count(*) total from mbti_result group by days;