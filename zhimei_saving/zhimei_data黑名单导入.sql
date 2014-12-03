#从zhimei_data中，导入作弊用户ID

insert ignore into saving_user_cheat select id,1,now() from zhimei_data.user_cheat 