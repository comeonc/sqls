update board_pic_query b,(
	select board_pic_id,only_for_commodity from (
		select id as board_pic_id,
		CASE
			when locate("taobao.com",pic_from_domain)>0 then 1
			when locate("tmall.com",pic_from_domain)>0 then 2
			when locate("wowsai.com",pic_from_domain)>0 then 3
			when locate("nop.cn",pic_from_domain)>0 then 4
			when locate("xiaoye.com",pic_from_domain)>0 then 5
			when locate("okbuy.com",pic_from_domain)>0 then 6
			when locate("yohobuy.com",pic_from_domain)>0 then 7
			when locate("dangdang.com",pic_from_domain)>0 then 8
			when locate("quwan.com",pic_from_domain)>0 then 9
			when locate("yintai.com",pic_from_domain)>0 then 10
			when locate("360buy.com",pic_from_domain)>0 then 11
			when locate("paipai.com",pic_from_domain)>0 then 12
			ELSE 0
		END as only_for_commodity
		from board_pic  
	) as t where t.only_for_commodity>0
) t set b.only_for_commodity=t.only_for_commodity where b.board_pic_id=t.board_pic_id


