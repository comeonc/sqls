select add_date as '日期',count(add_date) as '留言人数' from
(
	select date(add_time) add_date from weixin_user_content where weixin_public_account_id='gh_131f396b0daf' group by weixin_user_account_id
) as a group by add_date order by add_date desc 


