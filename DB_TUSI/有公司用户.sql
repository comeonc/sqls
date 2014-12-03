select '所有用户' as '类型', count(*) as  '人数' from tb_user where (type=1 or type=0) 
union
select  '有公司用户' ,count(*) num from tb_user where company_id>0 and  (type=1 or type=0)  