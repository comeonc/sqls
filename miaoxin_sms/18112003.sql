select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811200300
union select '03_01', count(id) as sum from sms_down_batch_1811200301
union select '03_02', count(id) as sum from sms_down_batch_1811200302
union select '03_03', count(id) as sum from sms_down_batch_1811200303
union select '03_04', count(id) as sum from sms_down_batch_1811200304
union select '03_05', count(id) as sum from sms_down_batch_1811200305
union select '03_06', count(id) as sum from sms_down_batch_1811200306
union select '03_07', count(id) as sum from sms_down_batch_1811200307
union select '03_08', count(id) as sum from sms_down_batch_1811200308
union select '03_09', count(id) as sum from sms_down_batch_1811200309
) as t 