select '02', sum(sum) from (
      select '02_00', count(id) as sum from sms_down_batch_1811200200
union select '02_01', count(id) as sum from sms_down_batch_1811200201
union select '02_02', count(id) as sum from sms_down_batch_1811200202
union select '02_03', count(id) as sum from sms_down_batch_1811200203
union select '02_04', count(id) as sum from sms_down_batch_1811200204
union select '02_05', count(id) as sum from sms_down_batch_1811200205
union select '02_06', count(id) as sum from sms_down_batch_1811200206
union select '02_07', count(id) as sum from sms_down_batch_1811200207
union select '02_08', count(id) as sum from sms_down_batch_1811200208
union select '02_09', count(id) as sum from sms_down_batch_1811200209
) as t 