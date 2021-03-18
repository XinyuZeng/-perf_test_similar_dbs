#generate data
./generate_data.sh
#run clickhouse server
sudo service clickhouse-server start
#create TPCH tables
./create_table.sh
#load data
./load_data.sh
#perform queries
clickhouse-client < q1.sql
