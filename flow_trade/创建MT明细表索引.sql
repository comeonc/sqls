CREATE INDEX `idx_create_date` ON sms_down_batch_171019 (`create_date`);
CREATE INDEX `idx_dest` ON sms_down_batch_171019 (`dest`);
CREATE INDEX `idx_customer_create_date` ON sms_down_batch_171019 (`customer_id`,`create_date`);
CREATE INDEX `idx_customer_operate_type` ON sms_down_batch_171019 (`customer_id`,`supplier_status`,`operate_type`);
CREATE INDEX `idx_suppiler_operate_type` ON sms_down_batch_171019 (`supplier_id`,`supplier_status`,`operate_type`);
CREATE INDEX `idx_signature` ON sms_down_batch_171019 (`signature_id`);
CREATE INDEX `idx_template` ON sms_down_batch_171019 (`template_id`);


ALTER TABLE `flow_trade`.`sms_down_batch_170716` 
	ADD INDEX `idx_create_date` (`create_date`) comment '', 
	ADD INDEX `idx_dest` (`dest`) comment '', 
	ADD INDEX `idx_customer_create_date` (`customer_id`, `create_date`) comment '', 
	ADD INDEX `idx_customer_operate_type` (`customer_id`, `supplier_status`, `operate_type`) comment '', 
	ADD INDEX `idx_suppiler_operate_type` (`supplier_id`, `supplier_status`, `operate_type`) comment '', 
	ADD INDEX `idx_signature` (`signature_id`) comment '', 
	ADD INDEX `idx_template` (`template_id`) comment '';



ALTER TABLE `flow_trade`.`sms_down_batch_171019` 
	ADD INDEX `idx_create_date` (`create_date`) comment '', 
	ADD INDEX `idx_dest` (`dest`) comment '', 
	ADD INDEX `idx_customer_create_date` (`customer_id`, `create_date`) comment '', 
	ADD INDEX `idx_customer_operate_type` (`customer_id`, `supplier_status`, `operate_type`) comment '', 
	ADD INDEX `idx_suppiler_operate_type` (`supplier_id`, `supplier_status`, `operate_type`) comment '', 
	ADD INDEX `idx_signature` (`signature_id`) comment '', 
	ADD INDEX `idx_template` (`template_id`) comment '';



ALTER TABLE `flow_trade`.`sms_down_batch_171018` 
	ADD INDEX `idx_create_date` (`create_date`) comment '', 
	ADD INDEX `idx_signature` (`signature_id`) comment '', 
	ADD INDEX `idx_template` (`template_id`) comment '';




ALTER TABLE `flow_trade`.`sms_down_batch_171024` 
	DROP INDEX `idx_customer_operate_type`,
	DROP INDEX `idx_suppiler_operate_type`, 
	ADD INDEX `idx_customer_operate_type` USING BTREE (`customer_id`, `operate_type`, `supplier_status`) comment '', 
	ADD INDEX `idx_suppiler_operate_type` USING BTREE (`supplier_id`, `operate_type`, `supplier_status`) comment '';



