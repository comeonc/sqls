UPDATE sms_account a ,
 sms_account_capital_daily d
SET d.admin_agency_id = a.admin_agency_id ,
 d.admin_id = a.admin_id
WHERE
	d.customer_id = a.id;

UPDATE sms_account a ,
 sms_account_profit_daily d
SET d.admin_agency_id = a.admin_agency_id ,
 d.admin_id = a.admin_id
WHERE
	d.customer_id = a.id;

UPDATE sms_account a ,
 sms_account_return_daily d
SET d.admin_agency_id = a.admin_agency_id ,
 d.admin_id = a.admin_id
WHERE
	d.customer_id = a.id;

UPDATE sms_account a ,
 sms_account_using_daily d
SET d.admin_agency_id = a.admin_agency_id ,
 d.admin_id = a.admin_id
WHERE
	d.customer_id = a.id;

UPDATE sms_supplier s ,
 sms_supplier_capital_daily d
SET d.provider_agency_id = s.provider_agency_id ,
 d.provider_id = s.provider_id
WHERE
	d.supplier_id = s.id;

UPDATE sms_supplier s ,
 sms_supplier_profit_daily d
SET d.provider_agency_id = s.provider_agency_id ,
 d.provider_id = s.provider_id
WHERE
	d.supplier_id = s.id;

UPDATE sms_supplier s ,
 sms_supplier_return_daily d
SET d.provider_agency_id = s.provider_agency_id ,
 d.provider_id = s.provider_id
WHERE
	d.supplier_id = s.id;

UPDATE sms_supplier s ,
 sms_supplier_using_daily d
SET d.provider_agency_id = s.provider_agency_id ,
 d.provider_id = s.provider_id
WHERE
	d.supplier_id = s.id;

