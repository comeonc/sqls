select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811230200
union select '03_01', count(id) as sum from sms_down_batch_1811230201
union select '03_02', count(id) as sum from sms_down_batch_1811230202
union select '03_03', count(id) as sum from sms_down_batch_1811230203
union select '03_04', count(id) as sum from sms_down_batch_1811230204
union select '03_05', count(id) as sum from sms_down_batch_1811230205
union select '03_06', count(id) as sum from sms_down_batch_1811230206
union select '03_07', count(id) as sum from sms_down_batch_1811230207
union select '03_08', count(id) as sum from sms_down_batch_1811230208
union select '03_09', count(id) as sum from sms_down_batch_1811230209
) as t 