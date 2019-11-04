
/*统计callback时间*/
select supplier_id,using_desc,using_memo,sum(total) t from
(
    select supplier_id,callback_using ,
	case 
		when callback_using<=0 then 0
		when callback_using>0 and callback_using<=1000 then       1000
		when callback_using>1000 and callback_using<=2000 then    2000
		when callback_using>2000 and callback_using<=3000 then    3000
		when callback_using>3000 and callback_using<=4000 then    4000
		when callback_using>4000 and callback_using<=5000 then    5000
		when callback_using>5000 and callback_using<=6000 then    6000
		when callback_using>6000 and callback_using<=7000 then    7000
		when callback_using>7000 and callback_using<=8000 then    8000
		when callback_using>8000 and callback_using<=9000 then    9000
		when callback_using>9000 and callback_using<=10000 then   10000
		when callback_using>10000 and callback_using<=20000 then  20000
		when callback_using>20000 and callback_using<=30000 then  30000
		when callback_using>30000 and callback_using<=40000 then  40000
		when callback_using>40000 and callback_using<=50000 then  50000
		when callback_using>50000 and callback_using<=60000 then  60000
		when callback_using>60000 and callback_using<=70000 then  70000
		when callback_using>70000 and callback_using<=80000 then  80000
		when callback_using>80000 and callback_using<=90000 then  90000
		when callback_using>90000  and callback_using<=100000 then 100000
		when callback_using>100000 and callback_using<=200000 then 200000
		when callback_using>200000 and callback_using<=300000 then 300000
		when callback_using>300000 and callback_using<=400000 then 400000
		when callback_using>400000 and callback_using<=500000 then 500000
		when callback_using>500000 and callback_using<=600000 then 600000
		when callback_using>600000 and callback_using<=700000 then 700000
		when callback_using>700000 and callback_using<=800000 then 800000
		when callback_using>800000 and callback_using<=900000 then 900000
		when callback_using>900000 and callback_using<=1000000 then 1000000
		
		when callback_using>1000000 and callback_using<=2000000 then 2000000
		when callback_using>2000000 and callback_using<=3000000 then 3000000
		when callback_using>3000000 and callback_using<=4000000 then 4000000
		when callback_using>4000000 and callback_using<=5000000 then 5000000
		when callback_using>5000000 and callback_using<=6000000 then 6000000
		when callback_using>6000000 and callback_using<=7000000 then 7000000
		when callback_using>7000000 and callback_using<=8000000 then 8000000
		when callback_using>8000000 and callback_using<=9000000 then 9000000
		when callback_using>9000000 and callback_using<=10000000 then 10000000
		
		
		
		when callback_using>10000000 then 10000001
	end as using_desc,	
        case 
		when callback_using<=0 then                                     '0秒'
		when callback_using>0 and callback_using<=1000 then             '1秒'
		when callback_using>1000 and callback_using<=2000 then          '2秒'
		when callback_using>2000 and callback_using<=3000 then          '3秒'
		when callback_using>3000 and callback_using<=4000 then          '4秒'
		when callback_using>4000 and callback_using<=5000 then          '5秒'
		when callback_using>5000 and callback_using<=6000 then          '6秒'
		when callback_using>6000 and callback_using<=7000 then          '7秒'
		when callback_using>7000 and callback_using<=8000 then          '8秒'
		when callback_using>8000 and callback_using<=9000 then          '9秒'
		when callback_using>9000 and callback_using<=10000 then        '10秒'
		when callback_using>10000 and callback_using<=20000 then       '20秒'
		when callback_using>20000 and callback_using<=30000 then       '30秒'
		when callback_using>30000 and callback_using<=40000 then       '40秒'
		when callback_using>40000 and callback_using<=50000 then       '50秒'
		when callback_using>50000 and callback_using<=60000 then       '60秒'
		when callback_using>60000 and callback_using<=70000 then       '70秒'
		when callback_using>70000 and callback_using<=80000 then       '80秒'
		when callback_using>80000 and callback_using<=90000 then       '90秒'
		when callback_using>90000  and callback_using<=100000 then    '100秒'
		when callback_using>100000 and callback_using<=200000 then    '200秒'
		when callback_using>200000 and callback_using<=300000 then    '300秒'
		when callback_using>300000 and callback_using<=400000 then    '400秒'
		when callback_using>400000 and callback_using<=500000 then    '500秒'
		when callback_using>500000 and callback_using<=600000 then    '600秒'
		when callback_using>600000 and callback_using<=700000 then    '700秒'
		when callback_using>700000 and callback_using<=800000 then    '800秒'
		when callback_using>800000 and callback_using<=900000 then    '900秒'
		when callback_using>900000 and callback_using<=1000000 then  '1000秒'
		
		when callback_using>1000000 and callback_using<=2000000 then  '2000秒'
		when callback_using>2000000 and callback_using<=3000000 then  '3000秒'
		when callback_using>3000000 and callback_using<=4000000 then  '4000秒'
		when callback_using>4000000 and callback_using<=5000000 then  '5000秒'
		when callback_using>5000000 and callback_using<=6000000 then  '6000秒'
		when callback_using>6000000 and callback_using<=7000000 then  '7000秒'
		when callback_using>7000000 and callback_using<=8000000 then  '8000秒'
		when callback_using>8000000 and callback_using<=9000000 then  '9000秒'
		when callback_using>9000000 and callback_using<=10000000 then  '10000秒'
		when callback_using>1000000 then '10000+秒'
	end as using_memo,
	count(1) as total from `sms_down_batch_170328` where supplier_status>=1 and supplier_status<>3 group by supplier_id, callback_using
    ) as t 
group by supplier_id,using_desc order by supplier_id asc, using_desc asc