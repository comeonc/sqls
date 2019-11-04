select '00', sum(sum) from (
      select '00_00', count(id) as sum from sms_down_batch_1811200000
union select '00_01', count(id) as sum from sms_down_batch_1811200001
union select '00_02', count(id) as sum from sms_down_batch_1811200002
union select '00_03', count(id) as sum from sms_down_batch_1811200003
union select '00_04', count(id) as sum from sms_down_batch_1811200004
union select '00_05', count(id) as sum from sms_down_batch_1811200005
union select '00_06', count(id) as sum from sms_down_batch_1811200006
union select '00_07', count(id) as sum from sms_down_batch_1811200007
union select '00_08', count(id) as sum from sms_down_batch_1811200008
union select '00_09', count(id) as sum from sms_down_batch_1811200009
) as t 