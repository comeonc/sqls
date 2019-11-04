select '00', operate_type,supplier_status, sum(sum) from (
      select '00_00',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110000 where customer_id=109295034 group by operate_type, supplier_status
union select '00_01',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110001 where customer_id=109295034 group by operate_type, supplier_status
union select '00_02',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110002 where customer_id=109295034 group by operate_type, supplier_status
union select '00_03',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110003 where customer_id=109295034 group by operate_type, supplier_status
union select '00_04',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110004 where customer_id=109295034 group by operate_type, supplier_status
union select '00_05',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110005 where customer_id=109295034 group by operate_type, supplier_status
union select '00_06',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110006 where customer_id=109295034 group by operate_type, supplier_status
union select '00_07',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110007 where customer_id=109295034 group by operate_type, supplier_status
union select '00_08',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110008 where customer_id=109295034 group by operate_type, supplier_status
union select '00_09',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110009 where customer_id=109295034 group by operate_type, supplier_status
) as t group by t.operate_type,t.supplier_status