import dask.dataframe as dd
df = dd.read_csv('dataset.csv')
df.to_parquet('dataset_parquet', write_index=False)
