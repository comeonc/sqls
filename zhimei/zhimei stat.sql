
(select '分享转发  ', date(add_time) d, count(1) n from board_pic             group by d order by d desc) union
(select '总用户数  ', date(add_time) d, count(1) n from `user`                group by d order by d desc) union
(select '总图格数  ', date(add_time) d, count(1) n from board                 group by d order by d desc) union 
(select '总图片数  ', date(add_time) d, count(1) n from share_pic             group by d order by d desc) union
(select '关注图格数', date(add_time) d, count(1) n from fans_board            group by d order by d desc) union
(select '图格黑名单', date(add_time) d, count(1) n from fans_board_blacklist  group by d order by d desc) union
(select '关注用户数', date(add_time) d, count(1) n from fans_user             group by d order by d desc) union
(select '总喜欢数  ', date(add_time) d, count(1) n from favourite             group by d order by d desc) union
(select '总评论数  ', date(add_time) d, count(1) n from message_detail        group by d order by d desc) union
(select '腾讯绑定数', date(add_time) d, count(1) n from sns_user_qq           group by d order by d desc) union
(select '人人绑定数', date(add_time) d, count(1) n from sns_user_renren       group by d order by d desc) union
(select '新浪绑定数', date(add_time) d, count(1) n from sns_user_sina         group by d order by d desc) 











