#!/bin/bash
# 在命令行中输入唯一一行命令：
# cd VPN && chmod +x deploy.sh && bash deploy.sh


# 下面都是由shell执行的命令
# 安装python
yum -y install python2
yum -y install git

# 安装libsodium
wget https://github.com/jedisct1/libsodium/releases/download/1.0.11/libsodium-1.0.11.tar.gz
tar xf libsodium-1.0.11.tar.gz 
cd libsodium-1.0.11
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig

cd ..
chmod +x ss.sh
./ss.sh 2>&1 | tee ss.log
