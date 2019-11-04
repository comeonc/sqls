select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811260300
union select '03_01', count(id) as sum from sms_down_batch_1811260301
union select '03_02', count(id) as sum from sms_down_batch_1811260302
union select '03_03', count(id) as sum from sms_down_batch_1811260303
union select '03_04', count(id) as sum from sms_down_batch_1811260304
union select '03_05', count(id) as sum from sms_down_batch_1811260305
union select '03_06', count(id) as sum from sms_down_batch_1811260306
union select '03_07', count(id) as sum from sms_down_batch_1811260307
union select '03_08', count(id) as sum from sms_down_batch_1811260308
union select '03_09', count(id) as sum from sms_down_batch_1811260309
) as t 