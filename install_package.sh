#!/bin/bash

cd ~
yum update -y
yum install vim wget -y
yum install -y mesa-libEGL mesa-libGL libICE libSM libXext mtdev xcb-util-wm xcb-util-image xcb-util-keysyms compat-libxcb libXrender fontconfig libfontconfig.so.1
wget https://minergate.com/download/rpm-cli -O minergate-cli.rpm
rpm -ivh minergate-cli.rpm

echo -n "請輸入您的minergate註冊的mail : "
read mail
echo -n "請輸入您要挖礦的幣別 : "
read currency
echo -n "請輸入您要分配的cpu core數 : "
read core
nohup minergate-cli -u $mail --$currency $core &
