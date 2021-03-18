-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    O_ORDERKEY		UInt32,
	O_CUSTKEY		UInt32, -- references C_CUSTKEY
	O_ORDERSTATUS	FixedString(1),
	O_TOTALPRICE	DECIMAL(8,2),
	O_ORDERDATE		Date,
	O_ORDERPRIORITY	FixedString(15),
	O_CLERK			FixedString(15),
	O_SHIPPRIORITY	UInt32,
	O_COMMENT		String
)
ENGINE = MergeTree PARTITION BY toYear(O_ORDERDATE) ORDER BY (O_ORDERKEY);