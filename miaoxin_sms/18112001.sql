select '01', sum(sum) from (
      select '01_00', count(id) as sum from sms_down_batch_1811200100
union select '01_01', count(id) as sum from sms_down_batch_1811200101
union select '01_02', count(id) as sum from sms_down_batch_1811200102
union select '01_03', count(id) as sum from sms_down_batch_1811200103
union select '01_04', count(id) as sum from sms_down_batch_1811200104
union select '01_05', count(id) as sum from sms_down_batch_1811200105
union select '01_06', count(id) as sum from sms_down_batch_1811200106
union select '01_07', count(id) as sum from sms_down_batch_1811200107
union select '01_08', count(id) as sum from sms_down_batch_1811200108
union select '01_09', count(id) as sum from sms_down_batch_1811200109
) as t 