#!/bin/bash

wget http://www.secdev.org/projects/scapy/files/scapy-2.3.1.zip
unzip scapy-2.3.1.zip
cd scapy-2.3.1
sudo python setup.py install
cd ..
rm -rf scapy-2.3.1*

wget http://libdnet.googlecode.com/files/libdnet-1.12.tgz
tar xfz libdnet-1.12.tgz
cd libdnet-1.12
./configure
make
sudo make install
cd python
sudo python setup.py install
cd ../..
rm -rf libdnet-1.12*

wget http://dfn.dl.sourceforge.net/sourceforge/pylibpcap/pylibpcap-0.6.4.tar.gz
tar xfz pylibpcap-0.6.4.tar.gz
cd pylibpcap-0.6.4
sudo python setup.py install
cd ..
rm -rf pylibpcap-0.6.4*