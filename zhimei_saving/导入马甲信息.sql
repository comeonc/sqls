truncate table saving_user_cheat;

insert INTO saving_user_cheat
SELECT zhimei_data.user_cheat.id,1,now()
FROM zhimei_data.user_cheat