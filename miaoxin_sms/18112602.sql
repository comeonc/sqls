select '02', sum(sum) from (
      select '02_00', count(id) as sum from sms_down_batch_1811260200
union select '02_01', count(id) as sum from sms_down_batch_1811260201
union select '02_02', count(id) as sum from sms_down_batch_1811260202
union select '02_03', count(id) as sum from sms_down_batch_1811260203
union select '02_04', count(id) as sum from sms_down_batch_1811260204
union select '02_05', count(id) as sum from sms_down_batch_1811260205
union select '02_06', count(id) as sum from sms_down_batch_1811260206
union select '02_07', count(id) as sum from sms_down_batch_1811260207
union select '02_08', count(id) as sum from sms_down_batch_1811260208
union select '02_09', count(id) as sum from sms_down_batch_1811260209
) as t 