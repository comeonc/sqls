select '01', sum(sum) from (
      select '01_00', count(id) as sum from sms_down_batch_1811210100
union select '01_01', count(id) as sum from sms_down_batch_1811210101
union select '01_02', count(id) as sum from sms_down_batch_1811210102
union select '01_03', count(id) as sum from sms_down_batch_1811210103
union select '01_04', count(id) as sum from sms_down_batch_1811210104
union select '01_05', count(id) as sum from sms_down_batch_1811210105
union select '01_06', count(id) as sum from sms_down_batch_1811210106
union select '01_07', count(id) as sum from sms_down_batch_1811210107
union select '01_08', count(id) as sum from sms_down_batch_1811210108
union select '01_09', count(id) as sum from sms_down_batch_1811210109
) as t 