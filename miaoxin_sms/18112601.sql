select '01', sum(sum) from (
      select '01_00', count(id) as sum from sms_down_batch_1811260100
union select '01_01', count(id) as sum from sms_down_batch_1811260101
union select '01_02', count(id) as sum from sms_down_batch_1811260102
union select '01_03', count(id) as sum from sms_down_batch_1811260103
union select '01_04', count(id) as sum from sms_down_batch_1811260104
union select '01_05', count(id) as sum from sms_down_batch_1811260105
union select '01_06', count(id) as sum from sms_down_batch_1811260106
union select '01_07', count(id) as sum from sms_down_batch_1811260107
union select '01_08', count(id) as sum from sms_down_batch_1811260108
union select '01_09', count(id) as sum from sms_down_batch_1811260109
) as t 