-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS supplier;
CREATE TABLE supplier
(
    S_SUPPKEY		UInt32,
	S_NAME			FixedString(25),
	S_ADDRESS		String,
	S_NATIONKEY		UInt32, -- references N_NATIONKEY
	S_PHONE			FixedString(15),
	S_ACCTBAL		DECIMAL(6,2),
	S_COMMENT		String
)
ENGINE = MergeTree ORDER BY (S_SUPPKEY);