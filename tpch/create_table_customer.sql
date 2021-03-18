DROP TABLE IF EXISTS customer;
CREATE TABLE customer
(
        C_CUSTKEY       UInt32,
        C_NAME          String,
        C_ADDRESS       String,
        C_NATIONKEY     UInt32,
        C_PHONE         String,
        C_ACCTBAL       Decimal(6,2),
        C_MKTSEGMENT    LowCardinality(String),
        C_COMMENT       String
)
ENGINE = MergeTree ORDER BY (C_CUSTKEY);