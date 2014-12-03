
select 
	subarea_id '分区ID', 
	coin_seg,
	case coin_seg
		when 0 then '0<= ~ <100'
		when 100 then '100<= ~ < 500'
		when 500 then '500<= ~ <1000'
		when 1000 then '1000<= ~ <2000'
		when 2000 then '2000<= ~ <5000'
		when 5000 then '5000<= ~ <10000'
		when 10000 then '10000<= ~ <20000'
		when 20000 then '20000<= ~ <50000'
		when 50000 then '50000<= ~ <100000'
		when 100000 then '100000<='
	end as '积分段',
	SUM(coin_total) as '段内总积分', 
	floor(AVG(coin_total)) as '段内平均积分',
	COUNT(coin_total) as '段内人数'
from
(
SELECT 
	coin_total, 
	case 
		when coin_total<100 then 0
		when coin_total>=100 and coin_total<500 then 100
		when coin_total>=500 and coin_total<1000 then 500
		when coin_total>=1000 and coin_total<2000 then 1000
		when coin_total>=2000 and coin_total<5000 then 2000
		when coin_total>=5000 and coin_total<10000 then 5000
		when coin_total>=10000 and coin_total<20000 then 10000
		when coin_total>=20000 and coin_total<50000 then 20000
		when coin_total>=50000 and coin_total<100000 then 50000
		when coin_total>=100000 then 100000
	end as coin_seg,
	subarea_id
FROM saving_user_2012_07_22
) as t group by t.subarea_id,t.coin_seg order by t.subarea_id asc, t.coin_seg asc

