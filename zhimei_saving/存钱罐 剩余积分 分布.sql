select  a.subarea_id, 
	a.coin_type,
	case  a.coin_type
		when	0	then '<=0'
		when	50	then '1~50'
		when	100	then '51~100'
		when	200	then '101~200'
		when	500	then '201~500'
		when	1000	then '501~1000'
		when	2000	then '1001~2000'
		when	5000	then '2001~5000'
		when	10000	then '5001~10000'
		when	20000	then '10001~20000'
		when	50000	then '20001~50000'
		when	100000	then '50001~100000'
		when	200000	then '100001~200000'
		when	500000	then '200001~500000'
		when	1000000	then '>500000'
	end '积分段',
	count(a.coin_type) '段内人数', SUM(a.coin_number) '段内总积分', avg(a.coin_number) '段内平均积分' from 
(
select subarea_id,
	case 
		when	coin_number<=0 then 0
		when 	coin_number>0 		and coin_number<=50		then 50
		when	coin_number>50		and coin_number<=100	then 100
		when	coin_number>100 	and coin_number<=200	then 200
		when	coin_number>200 	and coin_number<=500	then 500
		when	coin_number>500 	and coin_number<=1000	then 1000
		when	coin_number>1000 	and coin_number<=2000	then 2000
		when	coin_number>2000 	and coin_number<=5000	then 5000
		when	coin_number>5000 	and coin_number<=10000	then 10000
		when	coin_number>10000 	and coin_number<=20000	then 20000
		when	coin_number>20000 	and coin_number<=50000	then 50000
		when	coin_number>50000	and coin_number<=100000	then 100000
		when 	coin_number>100000	and coin_number<=200000	then 200000
		when 	coin_number>200000	and coin_number<=500000	then 500000
		ELSE	1000000
	end as coin_type,
	coin_number
  from saving_user s
) as a group by a.subarea_id,a.coin_type order by a.subarea_id,a.coin_type