
#!/bin/sh

echo ""
echo "making tryhackme folder in Desktop"
echo ""
mkdir ~/Desktop/tryhackme
path=~/Desktop/tryhackme
cd $path

echo "downloading office2john.py"
echo ""
echo "removing duplicates office2john files ( it happens to use this script multiple times)"
rm office2john.py.*
echo ""

sudo wget https://raw.githubusercontent.com/magnumripper/JohnTheRipper/bleeding-jumbo/run/office2john.py

echo ""
echo "__________________________________________________________________________________________"
echo ""

sleep 1




sudo python pass_recovery.py


sleep 5

echo "__________________________________________________________________________________________"


echo "+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
|D|O|C|X| |P|A|S|S|W|O|R|D| |C|R|A|C|K|E|R|
+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+"
echo "__________________________________________________________________________________________"
echo ""

sleep 2

echo  "enter MS WORD file name with full path. ( error will generate if you not give full path )" 
echo ""

read file



sudo python office2john.py $file  >  $path/hash


echo "your Hash file is saved sucessfully inside of '$path' folder"
echo ""

sleep 5


echo "attack is going to start. Please wait for some time"
echo ""
sudo john $path/hash --wordlist=$path/second.txt 

echo "attack is sucessful" 
echo ""

sleep 2

echo "check password"
echo ""
echo "__________________________________________________________________________________________"
echo ""
echo "YOUR PASSWORD IS  :" 
sudo john hash --show  | awk -F: '{print $2}'
echo ""
echo "__________________________________________________________________________________________"






