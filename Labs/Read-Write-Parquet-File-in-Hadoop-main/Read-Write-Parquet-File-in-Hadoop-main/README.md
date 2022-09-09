# Read-Write-Parquet-File-in-Hadoop

## *Giới thiệu*
##### Version
| Tên | Phiên bản|
|-----|------|
| EC2 | Cloud9Ubuntu-2020-08-26T15-11 |
| Hadoop | 2.7.7|

## *Cài đặt*
1. Xem file SetupEC2.txt để tạo 1 máy ảo EC2 trên AWS
2. Kết nối với máy ảo EC2
3. Xem file SetupHadoop.txt để cài đặt Hadoop
* http: // localhost: 50070   : Xem giao diện người dùng Web của NameNode
* http: // localhost: 8090    : Xem giao diện người dùng quản lý tài nguyên 

## *Code*
1. Clone git này về để xem: có code và data
2. Sử dụng file convert2.py để chuyển đổi file CSV sang Parquet
3. Đặt file Parquet vào HDFS
4. Cài đặt thêm một số môi trường
```ubuntu
sudo apt update
sudo apt install python3-pip python3-dev
sudo apt install python
sudo apt install jupyter
pip3 install --upgrade --force-reinstall --no-cache-dir jupyter
jupyter notebook password
```
4. http: // localhost: 8070     : Vào Jupyter để code python
5. Mở file mapreduce.ipynb để đọc ghi file parquet bằng MapReduce

#### GVHD: Huỳnh Xuân Phụng
#### SVTH:
| Họ tên | MSSV |
|--------|:---------:|
| Trần Kiện Khang | 19110375 |
| Lê Thị Minh Nguyệt | 19110413 |
| Trần Đông Thịnh | 19110466 |
