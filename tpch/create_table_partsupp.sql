-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS partsupp;
CREATE TABLE partsupp
(
    PS_PARTKEY		UInt32, -- references P_PARTKEY
	PS_SUPPKEY		UInt32, -- references S_SUPPKEY
	PS_AVAILQTY		UInt32,
	PS_SUPPLYCOST	DECIMAL(6,2),
	PS_COMMENT		String
)
ENGINE = MergeTree ORDER BY (PS_PARTKEY, PS_SUPPKEY);