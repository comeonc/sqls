select b.signature, s.extra_miaoxin_seq from `sms_signature_supplier_book` b left join sms_signature s on b.signature_id=s.id where supplier_id=1116 