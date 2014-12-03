alter table saving_action_logs add column http_s VARCHAR(60);
alter table saving_action_logs add column http_t VARCHAR(100);

alter table saving_goods add column max_exchange_type int;

alter table saving_goods_exchange_logs add column http_c varchar(100);
alter table saving_goods_exchange_logs add column http_s varchar(60);
alter table saving_goods_exchange_logs add column http_t varchar(100);




alter table saving_task_attend_logs add column http_c varchar(100);
alter table saving_task_attend_logs add column http_s varchar(60);
alter table saving_task_attend_logs add column http_t varchar(100);


alter table saving_task_invite_edm add column http_c varchar(100);
alter table saving_task_invite_edm add column http_s varchar(60);
alter table saving_task_invite_edm add column http_t varchar(100);


alter table saving_task_invite_regist add column http_c varchar(100);
alter table saving_task_invite_regist add column http_s varchar(60);
alter table saving_task_invite_regist add column http_t varchar(100);



alter table saving_task_invite_logs add column http_c varchar(100);
alter table saving_task_invite_logs add column http_s varchar(60);
alter table saving_task_invite_logs add column http_t varchar(100);



alter table saving_task_lottery_attend_logs add column http_c varchar(100);
alter table saving_task_lottery_attend_logs add column http_s varchar(60);
alter table saving_task_lottery_attend_logs add column http_t varchar(100);


alter table saving_task_lottery_award add column http_c varchar(100);
alter table saving_task_lottery_award add column http_s varchar(60);
alter table saving_task_lottery_award add column http_t varchar(100);



alter table saving_user_coin_exchange add column http_c varchar(100);
alter table saving_user_coin_exchange add column http_s varchar(60);
alter table saving_user_coin_exchange add column http_t varchar(100);



alter table saving_user_coin_logs add column http_c varchar(100);
alter table saving_user_coin_logs add column http_s varchar(60);
alter table saving_user_coin_logs add column http_t varchar(100);



alter table saving_task_combination_logs add column http_u varchar(60);
alter table saving_task_combination_logs add column http_ip varchar(50);
alter table saving_task_combination_logs add column http_c varchar(100);
alter table saving_task_combination_logs add column http_s varchar(60);
alter table saving_task_combination_logs add column http_t varchar(100);


alter table saving_task add column award_show varchar(200);

alter table saving_subarea add column index_ad_content text;
alter table saving_subarea add column needinput_qq int;






















