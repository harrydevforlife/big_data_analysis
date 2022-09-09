# Clear old files.
rm -r data_*.csv*
rm -r result_*

echo "----- Start Sales Analysis -----"

for i in 1 2 3 4 5
do
  echo "----- Start Loop Number : $i -----"
  # Downloading data file from the client system.
  wget http://$1:$2/download/data_$i.csv

  # Loading data file into hive table
  hive -e "LOAD DATA LOCAL INPATH 'data_$i.csv' OVERWRITE INTO TABLE sales";

  # Executing the query and creating the result file.
  hive -e 'SELECT product, count(price) FROM sales GROUP BY product' > result_$i

  # Uploading the result file to the client system.
  curl -X POST http://$1:$2/upload -H 'content-type: multipart/form-data' -F file=@result_$i

done

echo "----- End Sales Analysis -----"
