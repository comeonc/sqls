update board_pic_count
set hot_point=
	(like_count*200 + reshare_count*200 + comment_count*300 + view_count*50 + sync_count*500 + show_count*-10 + operate_count + user_weight*1000 + board_weight*1000 + category_weight*1000)
	* (1+0.8*user_weight) * (1+0.8*board_weight) * (1+0.8*category_weight)

