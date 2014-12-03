update board_pic_count bpc, board_pic bp , user u 
set bpc.user_weight=u.weight
where bpc.board_pic_id=bp.id and bp.user_id=u.id