select '00', sum(sum) from (
      select '00_00', count(id) as sum from sms_down_batch_1811210000
union select '00_01', count(id) as sum from sms_down_batch_1811210001
union select '00_02', count(id) as sum from sms_down_batch_1811210002
union select '00_03', count(id) as sum from sms_down_batch_1811210003
union select '00_04', count(id) as sum from sms_down_batch_1811210004
union select '00_05', count(id) as sum from sms_down_batch_1811210005
union select '00_06', count(id) as sum from sms_down_batch_1811210006
union select '00_07', count(id) as sum from sms_down_batch_1811210007
union select '00_08', count(id) as sum from sms_down_batch_1811210008
union select '00_09', count(id) as sum from sms_down_batch_1811210009
) as t 