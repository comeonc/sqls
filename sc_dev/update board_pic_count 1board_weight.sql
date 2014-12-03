update board_pic_count bpc, board_pic bp ,board b
set bpc.board_weight=b.weight
where bpc.board_pic_id=bp.id and bp.board_id=b.id