#!/bin/bash

yum install -y git 
chmod +x ss.sh
./ss.sh 2>&1 | tee ss.log
