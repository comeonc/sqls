CREATE TABLE `sms_supplier_connection_logs_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL DEFAULT '1' COMMENT '分区id',
  `supplier_id` int(11) DEFAULT '0',
  `client_id` varchar(20) DEFAULT NULL,
  `version` varchar(10) DEFAULT '',
  `connect_status` int(11) DEFAULT '0',
  `detail` varchar(1000) DEFAULT '',
  `server` varchar(100) DEFAULT '' COMMENT '当前执行操作的服务节点',
  `status` int(11) DEFAULT '0' COMMENT '通用状态',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据变动时间',
  PRIMARY KEY (`id`),
  KEY `idx_stat_date` (`supplier_id`,`create_date`),
  KEY `areaId` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176864281 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通道连接日志';

rename table sms_supplier_connection_logs to  sms_supplier_connection_logs_2;

rename table sms_supplier_connection_logs_1 to sms_supplier_connection_logs;

drop table sms_supplier_connection_logs_2;


CREATE TABLE `sms_account_connection_logs_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) DEFAULT '0' COMMENT '分区ID',
  `account_id` int(11) DEFAULT '0',
  `client_id` varchar(20) DEFAULT NULL,
  `version` varchar(10) DEFAULT '',
  `connect_status` int(11) DEFAULT '0',
  `detail` varchar(1000) DEFAULT '',
  `server` varchar(100) DEFAULT '' COMMENT '当前执行操作的服务节点',
  `status` int(11) DEFAULT '0' COMMENT '通用状态',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据变动时间',
  PRIMARY KEY (`id`),
  KEY `idx_stat_date` (`account_id`,`create_date`)
) ENGINE=InnoDB AUTO_INCREMENT=31517153 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='账号连接日志';

rename talbe sms_account_connection_logs to sms_account_connection_logs_2;

rename table sms_account_connection_logs_1 to sms_account_connection_logs;

drop table sms_account_connection_logs_2;

