select '待提现', sum(total_profit) from tb_wallet_account where project_id=2 
union
select '待提现<0', sum(total_profit) from tb_wallet_account where project_id=2 and total_profit<0
union
select '待提现>0', sum(total_profit) from tb_wallet_account where project_id=2 and total_profit>0
union
select '待提现>100', sum(total_profit) from tb_wallet_account where project_id=2 and total_profit>0 and total_profit>100
union
select '待提现>100人数', count(1) from tb_wallet_account where project_id=2 and total_profit>0 and total_profit>100
union
select '待提现<0人数', count(1) from tb_wallet_account where project_id=2 and total_profit<0


union
select '已提现',sum(total_withdraw) from tb_wallet_account where project_id=2
union
select '已提现<0',sum(total_withdraw) from tb_wallet_account where project_id=2 and total_withdraw<0
union
select '已提现>0',sum(total_withdraw) from tb_wallet_account where project_id=2 and total_withdraw>0





union
select '总收入.总账号',sum(total_income) from tb_wallet_account where project_id=2
union
select '总收入.明细累加',sum(fee) from tb_wallet_profit where project_id=2 and task_id >0
union 
select '总收入.明细正常',sum(fee) from tb_wallet_profit where project_id=2 and task_id >0 and `status`=1
union
select '总收入.明细隐藏',sum(fee) from tb_wallet_profit where project_id=2 and task_id >0 and `status`=2
