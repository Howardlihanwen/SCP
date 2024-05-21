#!/bin/bash

# 定義本地和遠端路徑
local_path="/SMF_PM"
local_path2="/UPF_PM"
remote_path="/cf1:/mob-gw"

# 輸入遠端伺服器的IP地址和使用者名稱
read -p "***.**.*.***" remote_ip
read -p "**.***.*.**" remote_ip2
read -p "admin" remote_user

# 使用SCP複製檔案
scp -r $local_path $remote_user@$remote_ip:$remote_path $local_path
scp -r $local_path2 $remote_user@$remote_ip2:$remote_path
