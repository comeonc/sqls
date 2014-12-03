select u.id,u.device_type,u.channel,concat(date(u.create_date),'.',hour(u.create_date)),'-','-',
uc.post_cnt,uc.be_comment_cnt,uc.be_praise_cnt,uc.comment_cnt,uc.praise_cnt,uc.be_report_cnt,'-',u.`status`,'-'

from tb_user u inner join tb_user_count uc on u.id=uc.id where u.company_id=6000067 and u.type=1