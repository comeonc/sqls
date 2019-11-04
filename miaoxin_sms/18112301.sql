select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811230100
union select '03_01', count(id) as sum from sms_down_batch_1811230101
union select '03_02', count(id) as sum from sms_down_batch_1811230102
union select '03_03', count(id) as sum from sms_down_batch_1811230103
union select '03_04', count(id) as sum from sms_down_batch_1811230104
union select '03_05', count(id) as sum from sms_down_batch_1811230105
union select '03_06', count(id) as sum from sms_down_batch_1811230106
union select '03_07', count(id) as sum from sms_down_batch_1811230107
union select '03_08', count(id) as sum from sms_down_batch_1811230108
union select '03_09', count(id) as sum from sms_down_batch_1811230109
) as t 