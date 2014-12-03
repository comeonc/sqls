select date(date_time) days, hour(date_time) h, count(1) totalFROM trial_skill_tag_log 
WHERE date_time>'2013-05-07' and date_time<'2013-05-09' group by days,h