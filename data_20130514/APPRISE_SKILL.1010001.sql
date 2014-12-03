select count(*) from edm_skill_edu2013 where flag=102;

update edm_skill_edu2013 set flag=-1020001 where flag=102 order by rand() desc #limit 2000
select uid from edm_skill_edu2013 where flag=-1020001