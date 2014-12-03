select fwc,fsc,count(1) as times from 
(
	SELECT
		CASE
			WHEN follow_count < 10 THEN follow_count
			WHEN follow_count >= 10 AND follow_count < 100 THEN floor(follow_count/10)*10
			WHEN follow_count >= 100 AND follow_count < 1000 THEN floor(follow_count/100)*100
			WHEN follow_count >= 1000 AND follow_count < 10000 THEN floor(follow_count/1000)*1000
			WHEN follow_count >= 10000 AND follow_count < 100000 THEN floor(follow_count/10000)*10000
			WHEN follow_count >= 100000 AND follow_count < 1000000 THEN floor(follow_count/100000)*100000
			WHEN follow_count >= 1000000 AND follow_count < 10000000 THEN floor(follow_count/1000000)*1000000
			ELSE floor(follow_count/10000000)*10000000
		END AS fwc,
		CASE
			WHEN fans_count < 10 THEN fans_count
			WHEN fans_count >= 10 AND fans_count < 100 THEN floor(fans_count/10)*10
			WHEN fans_count >= 100 AND fans_count < 1000 THEN floor(fans_count/100)*100
			WHEN fans_count >= 1000 AND fans_count < 10000 THEN floor(fans_count/1000)*1000
			WHEN fans_count >= 10000 AND fans_count < 100000 THEN floor(fans_count/10000)*10000
			WHEN fans_count >= 100000 AND fans_count < 1000000 THEN floor(fans_count/100000)*100000
			WHEN fans_count >= 1000000 AND fans_count < 10000000 THEN floor(fans_count/1000000)*1000000
			ELSE floor(fans_count/10000000)*10000000
		END AS fsc
	FROM
		sina_user_2
	LIMIT 5000000
) as a group by fwc,fsc order by times desc
