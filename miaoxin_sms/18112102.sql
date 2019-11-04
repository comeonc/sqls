select '02', sum(sum) from (
      select '02_00', count(id) as sum from sms_down_batch_1811210200
union select '02_01', count(id) as sum from sms_down_batch_1811210201
union select '02_02', count(id) as sum from sms_down_batch_1811210202
union select '02_03', count(id) as sum from sms_down_batch_1811210203
union select '02_04', count(id) as sum from sms_down_batch_1811210204
union select '02_05', count(id) as sum from sms_down_batch_1811210205
union select '02_06', count(id) as sum from sms_down_batch_1811210206
union select '02_07', count(id) as sum from sms_down_batch_1811210207
union select '02_08', count(id) as sum from sms_down_batch_1811210208
union select '02_09', count(id) as sum from sms_down_batch_1811210209
) as t 