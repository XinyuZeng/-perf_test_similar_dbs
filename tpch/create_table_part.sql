-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS part;
CREATE TABLE part
(
        P_PARTKEY		UInt32,
	P_NAME			String,
	P_MFGR			FixedString(25),
	P_BRAND			FixedString(10),
	P_TYPE			String,
	P_SIZE			UInt32,
	P_CONTAINER		FixedString(10),
	P_RETAILPRICE	        Decimal(6,2),
	P_COMMENT		String
)
ENGINE = MergeTree ORDER BY (P_PARTKEY);