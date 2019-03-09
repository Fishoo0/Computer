#!/bin/bash

# install pip

echo "start install nignx ..."
apt-get install nginx

echo "start install python ..."
apt-get install python3-pip

echo "start setuptools ..."
pip3 install setuptools

echo "start install ssserver"
pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip

echo "start init shadowsocks.json"

echo {\"server\":\"0.0.0.0\",\"port_password\":{\"8000\":\"haohaoxuexi\",\"8001\":\"back1\",\"8403\":\"shengmeng\", \"8404\":\"danshui\",\"8405\":\"chengliu\",\"8406\":\"chenjing\", \"8407\":\"zhaoxiaopo\",\"8408\":\"linyu\", \"8509\":\"heshanyi\", \"8410\":\"lishuang\",\"8411\":\"chenrenbo\", \"8412\":\"liqianqian\", \"8413\":\"cici\",\"8414\":\"lishuang\",\"8415\":\"huangzhihua\", \"8416\":\"daixiaohong\"},\"local_address\": \"127.0.0.1\",\"local_port\":1080,\"timeout\":300,\"method\":\"rc4-md5\"} > /etc/shadowsocks.json

echo "start init startup.sh"

echo ulimit -n 102400 > ~/startup.sh
echo ssserver -c /etc/shadowsocks.json -d restart >> ~/startup.sh
echo killall nginx >> ~/startup.sh
echo nginx >> ~/startup.sh

echo "ok, try to start ..."
bash ~/startup.sh

echo "finished"
