#!/bin/sh

echo "\nmaking tryhackme folder in Desktop\n"
mkdir ./tryhackme
cd ./tryhackme

echo "\nchecking requirement"
REQUIRED_PKG="john"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi

REQUIRED_PKG="python3"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi


echo " "


echo "getting office2john.py"
echo ""
echo "removing previous office2john files ( it happens to use this script multiple times)"
sudo rm office2john.py.*
echo "done.."
sudo wget https://raw.githubusercontent.com/magnumripper/JohnTheRipper/bleeding-jumbo/run/office2john.py
echo "new office2john downloaded"
echo "\n__________________________________________________________________________________________\n"


sleep 1

sudo python3 ../pass_recovery.py


echo "\n__________________________________________________________________________________________\n"
echo "+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
|D|O|C|X| |P|A|S|S|W|O|R|D| |C|R|A|C|K|E|R|
+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+"
echo "\n__________________________________________________________________________________________\n"
echo ""

sleep 2

echo  "enter MS WORD file name with full path." 
read file



sudo python3 office2john.py $file  >  hash

echo "your Hash file is saved sucessfully inside of './tryhackme ' folder \n"

echo "attack is going to start. Please wait for some time"
sleep 5

sudo john hash --wordlist=second.txt

echo "attack is sucessful" 
echo ""

sleep 2

echo "check password"
echo ""
echo "YOUR PASSWORD IS  :" 
sudo john hash --show  | awk -F: '{print $2}'
echo "__________________________________________________________________________________________"
echo "__________________________________________________________________________________________"
