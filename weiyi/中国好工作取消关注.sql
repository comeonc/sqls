select add_date as '日期',count(add_date) as '新粉丝' FROM
(
	select date(add_time) add_date from weixin_user_account where weixin_public_account_id='gh_131f396b0daf' and flag>=5
) as a group by a.add_date order by add_date desc 