insert into shop
SELECT 
	s.storeId as id,
	0 as prop_id,
	s.storePosCode as qr_code, 
	s.storeNameCN as name, 
	"" as portraithumburl,
	"" as image_url,
	"" as introduce,
	0 as location1,
	0 as location2,
	0 as location3,
	storeX as lat, #维度
	storeY as lon, #经度
	s.storePopAddress as address,
	0 as prop_num,
	0 as max_prop_num,
	'2012-01-01' as start_time,
	'2022-01-01' as end_time,
	"" as url1,
	"" as url2
FROM tb_store_info s