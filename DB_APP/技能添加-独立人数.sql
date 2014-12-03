SELECT date(date_time) days, count(DISTINCT uid) '独立人数', count(uid) '添加次数'
FROM trial_skill_tag_log
GROUP BY days