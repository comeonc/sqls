select '01', operate_type,supplier_status, sum(sum) from (
      select '01_00',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110100 where customer_id=109295034 group by operate_type, supplier_status
union select '01_01',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110101 where customer_id=109295034 group by operate_type, supplier_status
union select '01_02',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110102 where customer_id=109295034 group by operate_type, supplier_status
union select '01_03',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110103 where customer_id=109295034 group by operate_type, supplier_status
union select '01_04',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110104 where customer_id=109295034 group by operate_type, supplier_status
union select '01_05',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110105 where customer_id=109295034 group by operate_type, supplier_status
union select '01_06',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110106 where customer_id=109295034 group by operate_type, supplier_status
union select '01_07',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110107 where customer_id=109295034 group by operate_type, supplier_status
union select '01_08',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110108 where customer_id=109295034 group by operate_type, supplier_status
union select '01_09',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110109 where customer_id=109295034 group by operate_type, supplier_status
) as t group by t.operate_type,t.supplier_status
