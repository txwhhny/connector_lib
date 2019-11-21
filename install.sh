#! /bin/sh

echo "generating vid ... "
mkdir ~/.connector
HOME_DIR=~/.connector
VID_FILE=$HOME_DIR/.vid
date "+%s%N" > $VID_FILE
sudo chattr +i $VID_FILE

echo "extract libraries ... "
sudo tar -xzvf connector_lib.tar.gz -C /

echo "config libraries ... "
sudo cp connector_lib.conf /etc/ld.so.conf.d/
sudo ldconfig
