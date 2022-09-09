# Drop table if exists in hive.
hive -e 'DROP TABLE sales'

# Creating sales table.
hive -e "CREATE TABLE sales (product_id STRING, price DOUBLE, stock STRING, currency STRING, brand STRING, serial_number STRING, product STRING, category STRING, created_on STRING, updated_on STRING, model_number STRING, product_name STRING, category_type STRING, weight STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/usr/hive/warehouse'"

# Select created sales table.
hive -e "select * from sales"
