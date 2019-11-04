select

tb_column.table_schema, tb_column.table_name, tb_column.column_name,

	tb_column.data_type, tb_column.character_maximum_length, tb_column.column_comment

	from information_schema.columns tb_column

	left join information_schema.tables tb_table on tb_table.TABLE_NAME = tb_column.TABLE_NAME

	where tb_column.table_schema = 'CRM' and tb_column.table_name  in 

	('tb_settlement_object','tb_settlement_object_product','tb_settlement_product_subject')

	and tb_column.table_name not like 'ACT_%'

	order by tb_column.table_name, tb_column.ordinal_position;