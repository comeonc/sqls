select '03', sum(sum) from (
      select '03_00', count(id) as sum from sms_down_batch_1811210300
union select '03_01', count(id) as sum from sms_down_batch_1811210301
union select '03_02', count(id) as sum from sms_down_batch_1811210302
union select '03_03', count(id) as sum from sms_down_batch_1811210303
union select '03_04', count(id) as sum from sms_down_batch_1811210304
union select '03_05', count(id) as sum from sms_down_batch_1811210305
union select '03_06', count(id) as sum from sms_down_batch_1811210306
union select '03_07', count(id) as sum from sms_down_batch_1811210307
union select '03_08', count(id) as sum from sms_down_batch_1811210308
union select '03_09', count(id) as sum from sms_down_batch_1811210309
) as t 