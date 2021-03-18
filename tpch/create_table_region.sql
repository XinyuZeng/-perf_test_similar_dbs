-- may consider LowCardinality for faster dictionary encoding
DROP TABLE IF EXISTS region;
CREATE TABLE region
(
    R_REGIONKEY	UInt32,
	R_NAME		FixedString(25),
	R_COMMENT	String
)
ENGINE = MergeTree ORDER BY (R_REGIONKEY);