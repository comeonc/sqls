
#更新转发计数
update (select from_reshare_id,count(*) as total from reshares where flag<5 group by from_reshare_id) as a, reshares_count as b set b.reshare_count = a.total
where a.from_reshare_id = b.reshare_id;

#更新首发计数
update (select share_id,count(*) as total from reshares where flag<5 group by share_id) as a, shares_count as b set b.reshare_count = a.total
where a.share_id = b.share_id;

#更新自己管理的图格数量
update (select user_id,count(*) as total from board_manager where flag<5 and privilege=2 group by user_id) as a, user_profile as b set b.manage_board_count = a.total
where a.user_id = b.user_id;

#更新自己的图格数量
update (select user_id,count(*) as total from board_manager where flag<5 and privilege=1 group by user_id) as a, user_profile as b set b.self_board_count = a.total
where a.user_id = b.user_id;

#更新自己的转发分享数
update (select user_id,count(*) as total from reshares where flag<5 group by user_id) as a, user_profile as b set b.reshare_count = a.total
where a.user_id = b.user_id;

#更新自己的新分享数
update (select user_id,count(*) as total from shares where flag<5 group by user_id) as a, user_profile as b set b.share_count = a.total
where a.user_id = b.user_id;

#更新自己的评论数
update (select user_id,count(*) as total from reshare_comment where flag<5 group by user_id) as a, user_profile as b set b.comment_count = a.total
where a.user_id = b.user_id;

#更新图格的分享数
update (select board_id,count(*) as total from reshares where flag<5 group by board_id) as a, board as b set b.share_count = a.total
where a.board_id = b.id;

#更新被关注人的粉丝数(fans_count)
update (select followed_user_id,count(*) as total from fans_user where  flag<5 group by followed_user_id) as a, user_profile as b set b.fans_count = a.total
where a.followed_user_id = b.user_id;

#更新他人的关注数.
update (select user_id,count(*) as total from fans_user where  flag<5 group by user_id) as a, user_profile as b set b.follow_count = a.total
where a.user_id = b.user_id;



#更新好友数
update (select a.followed_user_id,count(*) as total from fans_user as a,fans_user as b where 
a.followed_user_id=b.user_id and a.user_id=b.followed_user_id and a.flag<5 and b.flag <5
and (a.followed_user_id in (select id from user) or a.user_id in (select id from user)) 
GROUP by a.followed_user_id)as fu, user_profile as up set up.friends_count = fu.total
where fu.followed_user_id = up.user_id;






































