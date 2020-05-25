#!/bin/bash

yum install -y git 
cd VPN
chmod +x ss.sh
./sh.sh 2>&1 | tee ss.log
