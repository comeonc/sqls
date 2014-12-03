update board_pic_count bpc, board_pic bp ,board b , board_category bc
set bpc.category_weight=bc.weight
where bpc.board_pic_id=bp.id and bp.board_id=b.id and b.board_category_id=bc.id