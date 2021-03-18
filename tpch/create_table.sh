# third parameter indicates size in GB
clickhouse-client -n < create_table_customer.sql
clickhouse-client -n < create_table_lineitem.sql
clickhouse-client -n < create_table_nation.sql
clickhouse-client -n < create_table_orders.sql
clickhouse-client -n < create_table_part.sql
clickhouse-client -n < create_table_partsupp.sql
clickhouse-client -n < create_table_region.sql
clickhouse-client -n < create_table_supplier.sql
