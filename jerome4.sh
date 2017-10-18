sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/JeromeLehto/jeromelehto230
cd jeromelehto230
cmake .
make install
cd bin/
chmod +x aeon-stak-cpu
sed -i '114s/.*/"wallet_address" : "WmtMjFJBRUgMod1waafB5WViDj8UnfFv1bbL97e83feSKmDb11LVLBMeWcxnHRVWVhhsS5MNK13zST3Cx3keyjQx1JCnmkgcF",/' config.txt
sysctl -w vm.nr_hugepages=128
sudo /bin/sh -c 'echo "vm.nr_hugepages=128" >> /etc/sysctl.conf'
screen ./aeon-stak-cpu
