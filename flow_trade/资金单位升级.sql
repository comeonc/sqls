UPDATE account_capital
SET total_sms_mt_cmcc = 10 * total_sms_mt_cmcc ,
 total_sms_mt_unicom = 10 * total_sms_mt_unicom ,
 total_sms_mt_telecom = 10 * total_sms_mt_telecom ,
 total_sms_mt = 10 * total_sms_mt ,
 total_sms_mo = 10 * total_sms_mo ,
 total_flow_cmcc = 10 * total_flow_cmcc ,
 total_flow_unicom = 10 * total_flow_unicom ,
 total_flow_telecom = 10 * total_flow_telecom ,
 total_flow = 10 * total_flow ,
 total_blance = 10 * total_blance ,
 total_recharge = 10 * total_recharge ,
 total_return = 10 * total_return;


UPDATE account_capital_daily
SET total_sms_mt_cmcc = 10 * total_sms_mt_cmcc ,
 total_sms_mt_unicom = 10 * total_sms_mt_unicom ,
 total_sms_mt_telecom = 10 * total_sms_mt_telecom ,
 total_sms_mt = 10 * total_sms_mt ,
 total_sms_mo = 10 * total_sms_mo ,
 total_flow_cmcc = 10 * total_flow_cmcc ,
 total_flow_unicom = 10 * total_flow_unicom ,
 total_flow_telecom = 10 * total_flow_telecom ,
 total_flow = 10 * total_flow ,
 total_blance = 10 * total_blance ,
 total_recharge = 10 * total_recharge ,
 total_return = 10 * total_return;


UPDATE account_capital_return
SET current_return = 10 * current_return ,
 blance_before = 10 * blance_before ,
 blance_after = 10 * blance_after ,
 price_cmcc = 10 * price_cmcc ,
 price_unicom = 10 * price_unicom ,
 price_telecom = 10 * price_telecom ,
 price_none = 10 * price_none;


UPDATE account_profile
SET sms_price_cmcc = 10 * sms_price_cmcc ,
 sms_price_unicom = 10 * sms_price_unicom ,
 sms_price_telecom = 10 * sms_price_telecom ,
 sms_price_mo = 10 * sms_price_mo ,
 flow_discount_cmcc = 10 * flow_discount_cmcc ,
 flow_discount_unicom = 10 * flow_discount_unicom ,
 flow_discount_telecom = 10 * flow_discount_telecom;


UPDATE flow_order
SET customer_cost = 10 * customer_cost ,
 supplier_cost = 10 * supplier_cost;


UPDATE flow_plugin_proportion
SET total_amount = 10 * total_amount ,
 nationwide_amount = 10 * nationwide_amount ,
 province_amount = 10 * province_amount;


UPDATE product
SET price = 10 * price;


UPDATE product_supplier
SET actual_price = 10 * actual_price;


UPDATE recharge
SET recharge_amount = 10 * recharge_amount ,
 recharge_before = 10 * recharge_before ,
 recharge_after = 10 * recharge_after;


UPDATE supplier
SET sms_price_cmcc = 10 * sms_price_cmcc ,
 sms_price_unicom = 10 * sms_price_unicom ,
 sms_price_telecom = 10 * sms_price_telecom ,
 sms_price_mo = 10 * sms_price_mo;


UPDATE supplier_capital
SET total_sms_mt_cmcc = 10 * total_sms_mt_cmcc ,
 total_sms_mt_unicom = 10 * total_sms_mt_unicom ,
 total_sms_mt_telecom = 10 * total_sms_mt_telecom ,
 total_sms_mt = 10 * total_sms_mt ,
 total_sms_mo = 10 * total_sms_mo ,
 total_flow_cmcc = 10 * total_flow_cmcc ,
 total_flow_unicom = 10 * total_flow_unicom ,
 total_flow_telecom = 10 * total_flow_telecom ,
 total_flow = 10 * total_flow ,
 total_blance = 10 * total_blance ,
 total_recharge = 10 * total_recharge;


UPDATE supplier_capital_daily
SET total_sms_mt_cmcc = 10 * total_sms_mt_cmcc ,
 total_sms_mt_unicom = 10 * total_sms_mt_unicom ,
 total_sms_mt_telecom = 10 * total_sms_mt_telecom ,
 total_sms_mt = 10 * total_sms_mt ,
 total_sms_mo = 10 * total_sms_mo ,
 total_flow_cmcc = 10 * total_flow_cmcc ,
 total_flow_unicom = 10 * total_flow_unicom ,
 total_flow_telecom = 10 * total_flow_telecom ,
 total_flow = 10 * total_flow ,
 total_blance = 10 * total_blance ,
 total_recharge = 10 * total_recharge;


UPDATE supplier_capital_return
SET current_return = 10 * current_return ,
 blance_before = 10 * blance_before ,
 blance_after = 10 * blance_after ,
 price_cmcc = 10 * price_cmcc ,
 price_unicom = 10 * price_unicom ,
 price_telecom = 10 * price_telecom ,
 price_none = 10 * price_none;



UPDATE sms_mo_batch
SET supplier_cost = 10 * supplier_cost ,
 customer_cost = 10 * customer_cost;


UPDATE sms_down_batch
SET supplier_cost = 10 * supplier_cost ,
 customer_cost = 10 * customer_cost;


update sms_down_batch_170301 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170302 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170303 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170304 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170305 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170306 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170307 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170308 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170309 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170310 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170311 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170312 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170313 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170314 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170315 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170316 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170317 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170318 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170319 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170320 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170321 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170322 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170323 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170324 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170325 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170326 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170327 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170328 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170329 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170330 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170331 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170401 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170402 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170403 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170404 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170405 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170406 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170407 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170408 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170409 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170410 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170411 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
update sms_down_batch_170412 SET supplier_cost = 10 * supplier_cost , customer_cost = 10 * customer_cost  ;
