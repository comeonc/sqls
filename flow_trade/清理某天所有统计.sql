delete from  sms_callback_customer_status          where stat_date='2019-11-24';
delete from  sms_callback_customer_status_province where stat_date='2019-11-24';
delete from  sms_callback_customer_supplier_status where stat_date='2019-11-24';
delete from  sms_callback_customer_supplier_using  where stat_date='2019-11-24';
delete from  sms_callback_customer_using           where stat_date='2019-11-24';
delete from  sms_callback_customer_using_province  where stat_date='2019-11-24';
delete from  sms_callback_supplier_status          where stat_date='2019-11-24';
delete from  sms_callback_supplier_status_province where stat_date='2019-11-24';
delete from  sms_callback_supplier_using           where stat_date='2019-11-24';
delete from  sms_callback_supplier_using_province  where stat_date='2019-11-24';




delete from  sms_account_capital_daily       where stat_date='2019-11-24';
delete from  sms_account_profit_daily        where stat_date='2019-11-24';
delete from  sms_account_province_daily      where stat_date='2019-11-24';
delete from  sms_account_signature_daily     where stat_date='2019-11-24';
delete from  sms_account_using_daily         where stat_date='2019-11-24';
delete from  sms_group_province_daily        where stat_date='2019-11-24';
delete from  sms_group_supplier_daily        where stat_date='2019-11-24';
delete from  sms_group_using_daily           where stat_date='2019-11-24';
delete from  sms_mo_customer_daily           where stat_date='2019-11-24';
delete from  sms_mo_customer_province_daily  where stat_date='2019-11-24';
delete from  sms_mo_supplier_daily           where stat_date='2019-11-24';
delete from  sms_mo_supplier_province_daily  where stat_date='2019-11-24';
delete from  sms_profit_daily                where stat_date='2019-11-24';
delete from  sms_signature_using_daily       where stat_date='2019-11-24';
delete from  sms_supplier_capital_daily      where stat_date='2019-11-24';
delete from  sms_supplier_customer_daily     where stat_date='2019-11-24';
delete from  sms_supplier_discount_daily     where stat_date='2019-11-24';
delete from  sms_supplier_profit_daily       where stat_date='2019-11-24';
delete from  sms_supplier_province_daily     where stat_date='2019-11-24';
delete from  sms_supplier_signature_daily    where stat_date='2019-11-24';
delete from  sms_supplier_using_daily        where stat_date='2019-11-24';



delete from sms_account_province_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_account_signature_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_account_using_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_group_using_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_account_discount_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_supplier_customer_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_supplier_discount_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_supplier_province_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_supplier_signature_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_supplier_using_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_callback_customer_status_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_callback_customer_using_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_callback_supplier_status_minutely where stat_minute>=1911240000 and stat_minute<1911260000;
delete from sms_callback_supplier_using_minutely where stat_minute>=1911240000 and stat_minute<1911260000;


delete from  sms_account_signature_province        where stat_date='2019-11-24';
delete from  sms_account_signature_supplier        where stat_date='2019-11-24';
delete from  sms_callback_customer_signature_status        where stat_date='2019-11-24';
delete from  sms_callback_customer_signature_using        where stat_date='2019-11-24';
delete from  sms_supplier_signature_province        where stat_date='2019-11-24';
delete from  sms_supplier_signature_customer        where stat_date='2019-11-24';
delete from  sms_callback_supplier_signature_status        where stat_date='2019-11-24';
delete from  sms_callback_supplier_signature_using        where stat_date='2019-11-24';
