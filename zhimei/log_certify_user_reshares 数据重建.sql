truncate table log_certify_user_reshares;

#--存入达人分享       
  insert into log_certify_user_reshares (user_id,share_id,reshare_id,share_type,add_time,flag)
	select a.user_id,a.share_id,a.id,1,a.add_time,1 
	from certify b inner join reshares a on a.add_time>'2012-06-01' and a.user_id = b.user_id where a.from_reshare_id=0 and b.certify_type=2 and b.flag<5;

##--存入达人收集
insert into log_certify_user_reshares (user_id,share_id,reshare_id,share_type,add_time,flag)
	select a.user_id,a.share_id,a.id,2,a.add_time,1 
	from certify b inner join reshares a on a.add_time>'2012-06-01' and a.user_id = b.user_id  where a.from_reshare_id>0 and b.certify_type=2 and b.flag<5;
	
	
	
	