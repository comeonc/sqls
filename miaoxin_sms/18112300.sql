select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811230000
union select '03_01', count(id) as sum from sms_down_batch_1811230001
union select '03_02', count(id) as sum from sms_down_batch_1811230002
union select '03_03', count(id) as sum from sms_down_batch_1811230003
union select '03_04', count(id) as sum from sms_down_batch_1811230004
union select '03_05', count(id) as sum from sms_down_batch_1811230005
union select '03_06', count(id) as sum from sms_down_batch_1811230006
union select '03_07', count(id) as sum from sms_down_batch_1811230007
union select '03_08', count(id) as sum from sms_down_batch_1811230008
union select '03_09', count(id) as sum from sms_down_batch_1811230009
) as t 