#!/bin/bash

# cd VPN && chmod +x deploy.sh && bash deploy.sh

# 安装python
yum -y install python2
yum -y install git

# 安装libsodium
wget https://github.com/jedisct1/libsodium/releases/download/1.0.11/libsodium-1.0.11.tar.gz
tar xf libsodium-1.0.11.tar.gz && cd libsodium-1.0.11
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig

chmod +x ss.sh
./ss.sh 2>&1 | tee ss.log
