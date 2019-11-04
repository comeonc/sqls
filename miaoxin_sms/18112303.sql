select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811230300
union select '03_01', count(id) as sum from sms_down_batch_1811230301
union select '03_02', count(id) as sum from sms_down_batch_1811230302
union select '03_03', count(id) as sum from sms_down_batch_1811230303
union select '03_04', count(id) as sum from sms_down_batch_1811230304
union select '03_05', count(id) as sum from sms_down_batch_1811230305
union select '03_06', count(id) as sum from sms_down_batch_1811230306
union select '03_07', count(id) as sum from sms_down_batch_1811230307
union select '03_08', count(id) as sum from sms_down_batch_1811230308
union select '03_09', count(id) as sum from sms_down_batch_1811230309
) as t 