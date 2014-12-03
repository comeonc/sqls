
-- 发出邀请的评价量
SELECT '发出总数', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise_invitation WHERE create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '发出大街', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise_invitation WHERE platform = 'dajie' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '发出新浪', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise_invitation WHERE platform = 'sina' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '发出人人', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise_invitation WHERE platform = 'renren' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '发出邮件', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise_invitation WHERE platform = 'email' AND create_date>'2013-04-22' GROUP BY DATE(create_date)

	UNION

-- 返回评价的评价量
SELECT '返回总数', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise WHERE create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '返回大街', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise WHERE appraise_from = 'dajie' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '返回新浪', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise WHERE appraise_from = 'sina' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '返回人人', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise WHERE appraise_from = 'renren' AND create_date>'2013-04-22' GROUP BY DATE(create_date)
	UNION
SELECT '返回邮件', DATE(create_date) '日期', COUNT(*) '次数', COUNT(DISTINCT from_uid) '人数' FROM tb_appraise WHERE appraise_from = 'email' AND create_date>'2013-04-22' GROUP BY DATE(create_date)

