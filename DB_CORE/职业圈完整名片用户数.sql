SELECT COUNT(1) FROM tb_bind_sina AS bs ,tb_card_identity AS ci WHERE bs.uid = ci.uid AND bs.uid > 0 AND bs.platform = 7