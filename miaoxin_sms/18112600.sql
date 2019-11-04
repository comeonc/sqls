select '00', sum(sum) from (
      select '00_00', count(id) as sum from sms_down_batch_1811260000
union select '00_01', count(id) as sum from sms_down_batch_1811260001
union select '00_02', count(id) as sum from sms_down_batch_1811260002
union select '00_03', count(id) as sum from sms_down_batch_1811260003
union select '00_04', count(id) as sum from sms_down_batch_1811260004
union select '00_05', count(id) as sum from sms_down_batch_1811260005
union select '00_06', count(id) as sum from sms_down_batch_1811260006
union select '00_07', count(id) as sum from sms_down_batch_1811260007
union select '00_08', count(id) as sum from sms_down_batch_1811260008
union select '00_09', count(id) as sum from sms_down_batch_1811260009
) as t 