select count(*) from edm_appraise_login_20130514 where flag=102;

update edm_appraise_login_20130514 set flag=-1020001 where flag=102 order by rand() #desc limit 2000
select uid from edm_appraise_login_20130514 where flag=-1020001