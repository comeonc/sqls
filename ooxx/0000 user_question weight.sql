
select id from  (
	SELECT 
		* ,
		ct + rg + rv + aw +st +sc + qc as weight
	FROM (
		SELECT id, 
			create_time, 
			case when comment_times >0 then comment_times *2000/real_vote_count  else 0 end as ct, 
			case when reply_times   >0 then reply_times   *10000/real_vote_count else 0 end as rt, 
			case when real_votegood >0 then real_votegood *200/real_vote_count   else 0 end as rg, 
			case when audit_weight  >0 then audit_weight  *60                    else 0 end as aw, 
			case when share_times   >0 then share_times   *2000/real_vote_count else 0 end as st,
			case when share_click_times>0 then share_click_times *2000/real_vote_count else 0 end as sc,
			question_catalog,
			real_vote_count as rv,
			case when (
                question_catalog=1  or question_catalog=2  or question_catalog=3 or question_catalog=6 or 
                question_catalog=10 or question_catalog=11 or question_catalog=12 
			) then 200 else 0 end as qc

		FROM user_question
		WHERE create_time>'2011-11-02' and create_time<'2011-11-03' and ask_public=1 and status <> 5 and audit_type <> 5 and real_vote_count >= 5
	)as a order by weight  desc limit 100
) a