#!/bin/sh


RED="\e[31m"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ENDCOLOR="\e[0m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"


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

REQUIRED_PKG="screenfetch"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi


echo '\n'
echo ""
echo  "${BOLDGREEN}making tryhackme folder in Desktop${ENDCOLOR}"

echo '\n'

mkdir ./tryhackme


path2= pwd
echo $path2."asdjfk"

path= pwd


echo "______________________________"


screenfetch
printf "${GREEN}"
printf "=================================\n"
printf "${ORANGE}"
figlet -w 200 -f standard "MS OFFICE"       
printf "${BLUE}"
figlet -w 200 -f  small "PASSWORD CRACKER TOOL" 
printf "${GREEN}"
printf "=================================\n"
printf "${STOP}"

echo "______________________________"
echo '\n'


echo "[1] Select 1 to crack MS WORD File password"
echo "[2] Select 2 to crack PDF File password"
echo "[3] Select 3 to crack ZIP File password"
echo "[4] Select 4 to crack RAR File password"
echo "[5] Select 5 to exit"

read option


if [ $option = 1 ]
then
	echo  "${BOLDGREEN}Enter the file name with full path. ( must give file's full path otherwise it will show error )     ${ENDCOLOR}"
	echo "example : /home/kali/Desktop/abcd.docx"
	echo '\n'

	read file
	
	sudo python3 /usr/share/john/office2john.py $file  >  ./tryhackme/hash
elif [ $option = 2 ]
then
	echo  "${BOLDGREEN}Enter the file name with full path. ( must give file's full path otherwise it will show error )     ${ENDCOLOR}"
	echo "example : /home/kali/Desktop/abcd.docx"
	echo '\n'


	read file
	perl /usr/share/john/pdf2john.pl $file > ./tryhackme/hash
elif [ $option = 3 ]
then
	echo  "${BOLDGREEN}Enter the file name with full path. ( must give file's full path otherwise it will show error )     ${ENDCOLOR}"
	echo "example : /home/kali/Desktop/abcd.docx"
	echo '\n'


	read file
	/usr/sbin/zip2john $file > ./tryhackme/hash
elif [ $option = 4 ]
then
	echo  "${BOLDGREEN}Enter the file name with full path. ( must give file's full path otherwise it will show error )     ${ENDCOLOR}"
	echo "example : /home/kali/Desktop/abcd.docx"
	echo '\n'

	read file
	/usr/sbin/rar2john $file > ./tryhackme/hash
else 
	exit

fi



echo  "${BOLDGREEN}Your Hash file saved sucessfully inside of '$path' folder                  ${ENDCOLOR}"
echo '\n'


sleep 1


echo '\n'
echo "______________________________"
echo '\n'

sleep 1

echo "Select 1 for making our wordlist"
echo "Select 2 for using wordlist that you have or downloaded"

read p

if [ $p = 1 ]
then 
	sudo python3 pass_recovery.py
	echo "______________________________"
	echo  "${BOLDGREEN}Attack is going to start. Please wait for some time.                  ${ENDCOLOR}"
	echo '\n'
	sudo john ./tryhackme/hash --wordlist=second.txt 
	echo '\n'
	echo "______________________________"
	echo '\n'
elif [ $p = 2 ]
then
	echo "specify the full path to the wordlist"
	read wordlist1
	echo "______________________________"
	echo  "${BOLDGREEN}Attack is going to start. Please wait for some time.                  ${ENDCOLOR}"
	echo '\n'
	sudo john ./tryhackme/hash --wordlist=$wordlist1
	echo '\n'
	echo "______________________________"
	echo '\n'
else 
	exit
fi


sleep 1

echo  "${BOLDGREEN}Attack is sucessful.                 ${ENDCOLOR}"
echo '\n'

echo  "${BOLDGREEN}Check password -->                ${ENDCOLOR}"
echo '\n'



echo ""
echo  "${RED}YOUR PASSWORD IS  :       ${ENDCOLOR}"
sudo john ./tryhackme/hash --show  | awk -F: '{print $2}'
echo '\n'
echo "______________________________"
