#select count(*) from user where  LOCATE("zhimei.cn",email)>0 or 	LOCATE("zhimei.net",email)>0; #马甲数
#select acc2.email,user.id,acc2.id from acc2 left join user on acc2.email=user.email where user.id is not null;
#select email,count(email) from acc2 group by email having count(email)>1;
#delete from acc2 where email='3c798ce79cecbb840cd8606e8959d141';
#select id,email,password_digest from user where length(email)=32 and LOCATE("@",email)=0; #email不对
#select email,count(email) from acc2 group by email having count(email)>1;
#insert into acc2(uid,email_old) select id,password_digest from user where 	length(email)=32 and LOCATE("@",email)=0;



update user set password_digest=md5(email) where LOCATE("zhimei.cn",email)>0 ;
delete from backup_oooo.acc2;
insert into backup_oooo.acc2(uid,email_old) select id,password_digest from user where add_time>"2012-06-24" and	LOCATE("zhimei.cn",email)>0 or 	LOCATE("zhimei.net",email)>0;
update backup_oooo.acc2, backup_oooo.acc3 set backup_oooo.acc2.email=backup_oooo.acc3.email, backup_oooo.acc2.pass=backup_oooo.acc3.pass where backup_oooo.acc2.id=backup_oooo.acc3.id;
delete backup_oooo.acc2 from backup_oooo.acc2 left join user on backup_oooo.acc2.email=user.email where user.id is not null;
update backup_oooo.acc2,user set user.email=backup_oooo.acc2.email where user.id=backup_oooo.acc2.uid;

