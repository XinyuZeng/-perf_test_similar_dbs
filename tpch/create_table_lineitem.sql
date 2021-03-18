-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS lineitem;
CREATE TABLE lineitem
(
    L_ORDERKEY		UInt32, -- references O_ORDERKEY
	L_PARTKEY		UInt32, -- references P_PARTKEY (compound fk to PARTSUPP)
	L_SUPPKEY		UInt32, -- references S_SUPPKEY (compound fk to PARTSUPP)
	L_LINENUMBER	UInt32,
	L_QUANTITY		DECIMAL(10,2),
	L_EXTENDEDPRICE	DECIMAL(10,2),
	L_DISCOUNT		DECIMAL(10,2),
	L_TAX			DECIMAL(10,2),
	L_RETURNFLAG	FixedString(1),
	L_LINESTATUS	FixedString(1),
	L_SHIPDATE		DATE,
	L_COMMITDATE	DATE,
	L_RECEIPTDATE	DATE,
	L_SHIPINSTRUCT	FixedString(25),
	L_SHIPMODE		FixedString(10),
	L_COMMENT		String
)
ENGINE = MergeTree ORDER BY (L_ORDERKEY, L_LINENUMBER);