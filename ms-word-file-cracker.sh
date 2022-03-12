
#!/bin/sh


RED="\e[31m"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ENDCOLOR="\e[0m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"




echo '\n'
echo ""
echo  "${BOLDGREEN}making tryhackme folder in Desktop${ENDCOLOR}"
echo '\n'
mkdir ~/Desktop/tryhackme
path=~/Desktop/tryhackme
cd $path

echo '\n'
echo "${RED}downloading office2john.py${ENDCOLOR}"

echo '\n'

echo  "${BOLDGREEN}removing duplicates office2john files ( it happens to use this script multiple times)                  ${ENDCOLOR}"

rm office2john.py.*
echo '\n'

sudo wget https://raw.githubusercontent.com/magnumripper/JohnTheRipper/bleeding-jumbo/run/office2john.py

echo '\n'
echo "__________________________________________________________________________________________"
echo '\n'

sleep 1




sudo python pass_recovery.py


sleep 5

echo "__________________________________________________________________________________________"


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

echo "__________________________________________________________________________________________"
echo '\n'

sleep 2

echo  "${BOLDGREEN}Enter MS WORD file name with full path. ( must give file's full path otherwise will show error )     ${ENDCOLOR}"
echo "example : /home/kali/Desktop/abcd.docx"
echo '\n'

read file



sudo python office2john.py $file  >  $path/hash


echo  "${BOLDGREEN}Your Hash file is saved sucessfully inside of '$path' folder                  ${ENDCOLOR}"
echo '\n'

sleep 5


echo  "${BOLDGREEN}Attack is going to start. Please wait for some time                  ${ENDCOLOR}"
echo '\n'
sudo john $path/hash --wordlist=$path/second.txt 


echo  "${BOLDGREEN}Attack is sucessful                 ${ENDCOLOR}"
echo '\n'

sleep 2

echo  "${BOLDGREEN}Check password                 ${ENDCOLOR}"
echo '\n'
echo "__________________________________________________________________________________________"
echo '\n'


echo ""
echo  "${RED}YOUR PASSWORD IS  :       ${ENDCOLOR}"
sudo john hash --show  | awk -F: '{print $2}'
echo '\n'
echo "__________________________________________________________________________________________"






