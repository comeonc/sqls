select a.id, a.vc,a.ct, u.username,u.sexual,u.openplatform,u.birthday from 
ooxx.user u inner join
(
select p16.id, p16.vote_count-IFNULL(p15.vote_count,0) vc ,p16.comment_times-IFNULL(p15.comment_times,0) ct from profile_2011_12_16 p16 left join profile_2011_11_15 p15 on p16.id=p15.id where p16.vote_count-IFNULL(p15.vote_count,0) >720
) as a on u.id=a.id where u.user_type=1