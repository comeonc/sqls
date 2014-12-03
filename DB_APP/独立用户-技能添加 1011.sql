SELECT date(date_time) days, uid, 1011
FROM trial_skill_tag_log
GROUP BY days,uid