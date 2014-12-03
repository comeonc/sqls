select create_date,SUBSTRING_INDEX(all_cnt,',',-1) total from tb_ask_statistics WHERE create_date>='2013-06-01' and flag=0 and type = 4


select SUBSTRING_INDEX(all_cnt,',',-1) total from tb_ask_statistics WHERE create_date='2013-06-01' and flag=0 and type = 4