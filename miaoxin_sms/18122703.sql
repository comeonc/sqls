select '03', operate_type,supplier_status, sum(sum) from (
      select '03_00',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110300 where customer_id=109295034 group by operate_type, supplier_status
union select '03_01',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110301 where customer_id=109295034 group by operate_type, supplier_status
union select '03_02',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110302 where customer_id=109295034 group by operate_type, supplier_status
union select '03_03',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110303 where customer_id=109295034 group by operate_type, supplier_status
union select '03_04',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110304 where customer_id=109295034 group by operate_type, supplier_status
union select '03_05',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110305 where customer_id=109295034 group by operate_type, supplier_status
union select '03_06',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110306 where customer_id=109295034 group by operate_type, supplier_status
union select '03_07',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110307 where customer_id=109295034 group by operate_type, supplier_status
union select '03_08',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110308 where customer_id=109295034 group by operate_type, supplier_status
union select '03_09',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110309 where customer_id=109295034 group by operate_type, supplier_status
) as t group by t.operate_type,t.supplier_status