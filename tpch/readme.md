# generate data
./generate_data.sh

Note: ./dbgen is an executable modified from TPCH tools to generate data format that Clickhouse supports

# run clickhouse server
sudo service clickhouse-server start

# create TPCH tables
./create_table.sh

TODO: Need further parameter tuning to make Clickhouse utilize its internal optimization

# load data
./load_data.sh

# perform queries
clickhouse-client < q1.sql

TODO: performance recording(into csv files), iterations(run 5 times and take median), parallel in multi-machines