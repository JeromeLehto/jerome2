sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/JeromeLehto/xmr-stak-cpu
cd xmr-stak-cpu
cmake .
make install
cd bin/
chmod +x xmr-stak-cpu
./xmr-stak-cpu
nano config.txt
