select '微信-总到访' ,count(1) num from tb_app_user_profile where app_id=8
union
select '微信-授权',count(1) num from tb_weixin_userinfo where app_id=8
union
select '微信-关注者' ,count(1) num from tb_weixin_userinfo where app_id=8 and subscribe_time>0
union
select '红点-合成次数',count(1) num from tb_plus1_compose
union
select '红点-合成人数',count(distinct profile_id) num from tb_plus1_compose 
union
select '月饼-合成次数',count(1) num from tb_plus2_compose
union
select '月饼-合成人数',count(distinct profile_id) num from tb_plus2_compose 
union 
select '老板-完成次数', count(1) from tb_tusi_game_finish where game='boss'
UNION
select '老板-完成人数', count(distinct unique_id) from tb_tusi_game_finish where game='boss'
union 
select '外快-完成次数', count(1) from tb_tusi_game_finish where game='money'
UNION
select '外快-完成人数', count(distinct unique_id) from tb_tusi_game_finish where game='money'
union 
select '拍马屁-完成次数', count(1) from tb_tusi_game_finish where game='pee'
UNION
select '拍马屁-完成人数', count(distinct unique_id) from tb_tusi_game_finish where game='pee'
union 
select '办公室-完成次数', count(1) from tb_tusi_game_finish where game='office'
UNION
select '办公室-完成人数', count(distinct unique_id) from tb_tusi_game_finish where game='office'
union 
select 'CEO-完成次数', count(1) from tb_tusi_game_finish where game='ceo'
union
select 'CEO-完成人数', count(distinct unique_id) from tb_tusi_game_finish where game='ceo'