select '02', operate_type,supplier_status, sum(sum) from (
      select '02_00',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110200 where customer_id=109295034 group by operate_type, supplier_status
union select '02_01',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110201 where customer_id=109295034 group by operate_type, supplier_status
union select '02_02',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110202 where customer_id=109295034 group by operate_type, supplier_status
union select '02_03',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110203 where customer_id=109295034 group by operate_type, supplier_status
union select '02_04',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110204 where customer_id=109295034 group by operate_type, supplier_status
union select '02_05',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110205 where customer_id=109295034 group by operate_type, supplier_status
union select '02_06',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110206 where customer_id=109295034 group by operate_type, supplier_status
union select '02_07',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110207 where customer_id=109295034 group by operate_type, supplier_status
union select '02_08',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110208 where customer_id=109295034 group by operate_type, supplier_status
union select '02_09',operate_type, supplier_status, sum(total_piece) as sum from sms_down_batch_1907110209 where customer_id=109295034 group by operate_type, supplier_status
) as t group by t.operate_type,t.supplier_status