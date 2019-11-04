
/*统计callback时间*/
select supplier_id,using_desc,using_memo,sum(total) t from
(
    select supplier_id,unix_timestamp(create_date)-unix_timestamp(request_time) as submit_using ,
	case 
		when (unix_timestamp(create_date) - unix_timestamp(request_time))<0 then -1
		when (unix_timestamp(create_date) - unix_timestamp(request_time))=0 then 0
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>0    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=1    then    1
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>1    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=2    then    2
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>2    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=3    then    3
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>3    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=4    then    4
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>4    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=5    then    5
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>5    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=6    then    6
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>6    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=7    then    7
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>7    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=8    then    8
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>8    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=9    then    9
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>9    and (unix_timestamp(create_date) - unix_timestamp(request_time))<=10   then   10
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>10   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=20   then   20
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>20   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=30   then   30
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>30   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=40   then   40
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>40   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=50   then   50
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>50   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=60   then   60
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>60   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=120  then  120
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>120 then 121
	end as using_desc,	
        case 
		when (unix_timestamp(create_date) - unix_timestamp(request_time))<0 then                                           '-1秒'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))=0 then                                            '0秒'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>0   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=1 then      '1秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>1   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=2 then      '2秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>2   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=3 then      '3秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>3   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=4 then      '4秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>4   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=5 then      '5秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>5   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=6 then      '6秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>6   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=7 then      '7秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>7   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=8 then      '8秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>8   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=9 then      '9秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>9   and (unix_timestamp(create_date) - unix_timestamp(request_time))<=10 then    '10秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>10  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=20 then    '20秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>20  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=30 then    '30秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>30  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=40 then    '40秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>40  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=50 then    '50秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>50  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=60 then    '60秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>60  and (unix_timestamp(create_date) - unix_timestamp(request_time))<=120 then  '120秒内'
		when (unix_timestamp(create_date) - unix_timestamp(request_time))>120 then '120+秒'
	end as using_memo,
	count(1) as total from `sms_down_batch_170328` where supplier_status>=1 and supplier_status<>3 group by supplier_id, (unix_timestamp(create_date) - unix_timestamp(request_time))
    ) as t 
group by supplier_id,using_desc order by supplier_id asc, using_desc asc