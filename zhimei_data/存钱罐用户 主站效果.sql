
select share_count as '首发收集数',count(share_count) as "人数" from user_profile group by share_count order by share_count;

select reshare_count as '总收集数',count(reshare_count) as "人数" from user_profile group by reshare_count order by reshare_count;

select comment_count as '总评论数',count(comment_count) as "人数" from user_profile group by comment_count order by comment_count;


select fans_count as '粉丝数',count(fans_count) as "人数" from user_profile group by fans_count order by fans_count;

select friends_count as '好友数',count(friends_count) as "人数" from user_profile group by friends_count order by friends_count;

select follow_count as '关注数',count(follow_count) as "人数" from user_profile group by follow_count order by follow_count;


