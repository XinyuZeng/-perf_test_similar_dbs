# third parameter indicates size in GB
clickhouse-client --query "INSERT INTO customer FORMAT CSV" < customer.tbl
clickhouse-client --query "INSERT INTO lineitem FORMAT CSV" < lineitem.tbl
clickhouse-client --query "INSERT INTO nation FORMAT CSV" < nation.tbl
clickhouse-client --query "INSERT INTO orders FORMAT CSV" < orders.tbl
clickhouse-client --query "INSERT INTO part FORMAT CSV" < part.tbl
clickhouse-client --query "INSERT INTO partsupp FORMAT CSV" < partsupp.tbl
clickhouse-client --query "INSERT INTO region FORMAT CSV" < region.tbl
clickhouse-client --query "INSERT INTO supplier FORMAT CSV" < supplier.tbl