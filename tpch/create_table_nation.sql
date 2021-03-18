-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS nation;
CREATE TABLE nation
(
    N_NATIONKEY		UInt32,
	N_NAME			FixedString(25),
	N_REGIONKEY		UInt32,  -- references R_REGIONKEY
	N_COMMENT		String
)
ENGINE = MergeTree ORDER BY (N_NATIONKEY);