SELECT
	`server` ,
	DATE_FORMAT(start_time , '%Y-%m-%d.%H') AS `hour` ,
	COUNT(1) 'full gc times'
FROM
	`sys_monitor_gc`
WHERE
	create_date > date_add(now() , INTERVAL - 1 DAY)
GROUP BY
	`server` ,
	`hour`
ORDER BY
	`hour` DESC ,
	`server` ASC