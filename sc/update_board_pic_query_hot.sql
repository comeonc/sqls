update board_pic_query set daily_hot=0,weekly_hot=0 ;
update board_pic_query q, (select board_pic_id,count(board_pic_id) hot FROM log_board_share where add_time>'2012-4-15' group by board_pic_id) as h set q.daily_hot=h.hot where q.board_pic_id=h.board_pic_id;
update board_pic_query q, (select board_pic_id,count(board_pic_id) hot FROM log_board_share where add_time>'2012-04-10' group by board_pic_id) as h set q.weekly_hot=h.hot where q.board_pic_id=h.board_pic_id;
