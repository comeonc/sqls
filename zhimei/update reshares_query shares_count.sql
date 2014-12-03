insert into reshare_comment_tag 
(comment_id,reshare_id,root_tag_id,last_update_time) 
select a.id,a.reshare_id,855,a.add_time
from reshare_comment a 
inner join reshares b  on a.reshare_id=b.id
inner join reshares_query qu on b.share_id=qu.share_id	
where qu.root_tag_id=855
group by a.id;

insert into reshare_comment_tag 
(comment_id,reshare_id,root_tag_id,last_update_time) 
select a.id,a.reshare_id,856,a.add_time
from reshare_comment a 
inner join reshares b  on a.reshare_id=b.id
inner join reshares_query qu on b.share_id=qu.share_id	
where qu.root_tag_id=856
group by a.id;

insert into reshare_comment_tag 
(comment_id,reshare_id,root_tag_id,last_update_time) 
select a.id,a.reshare_id,786,a.add_time
from reshare_comment a 
inner join reshares b  on a.reshare_id=b.id
inner join reshares_query qu on b.share_id=qu.share_id	
where qu.root_tag_id=786
group by a.id;
 
update reshares_query a,shares_count b set a.view_count = b.view_count where a.share_id = b.share_id and a.root_tag_id=855
update reshares_query a,shares_count b set a.view_count = b.view_count where a.share_id = b.share_id and a.root_tag_id=856
update reshares_query a,shares_count b set a.view_count = b.view_count where a.share_id = b.share_id and a.root_tag_id=786
    