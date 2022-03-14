# Microsoft-Office-Password-Cracker-tool
Using Microsoft Office Password Cracker tool we can crack any Microsoft Office file's password.This tool uses john the ripper and office2john.py script to crak the password. wordlist generator is also included in python script.


During my exam period i made this tool to crack my password protected question paper.


# Requirements

**John The Ripper & Screenfetch**

You can install them with the following Command

``` bash
$ sudo apt-get install john
$ sudo apt-get install screenfetch
```


# Installation & Usage

``` bash
$ git clone https://github.com/vishalpatil1337/Microsoft-Office-Password-Cracker-tool.git
$ cd Microsoft-Office-Password-Cracker-tool && chmod +x *
$ ./ms-word-file-cracker.sh       
```
   a) script will start and will make tryhackme name folder on your desktop. 
   
   b) it will download office2john.py script using curl command
   
   c) if office2john.py alredy exists the second file will be removed using rm command.


   d) enter subject name : here you need to write any subject name for example ai (artificial intelligence). 
      This custom wordlist builder will make a Wordlist containing   
      
   •	0 - 9999  
   •	ai0 - ai9999  
   •	AI0 - AI9999  
   •	ai@0 - ai@9999

   in my case the exam password is probably like subject name and 3 to 6 numbers - example ai123  
                                
 
   e) after making wordlist it will ask "enter MS WORD file name with full path"
                                you need to give full path. example - /home/kali/Desktop/tryhackme/file.docx
  
  
   f) Attack will start. It will take some time depending of your PC performance, just dont close the tool. 


   g) After some time you will get a password. 
  
  
  # Blog Tutorial
  
**https://www.techxbyte.in/2022/03/how-i-cracked-question-paper-password-before-time-during-exam.html**
  
  # Video Tutorial

**https://youtu.be/ddbPlvEJpQo**




#



Special Thanks to -: 

   •	Omkar Kalantre  :   https://github.com/omkar-ok
   
   •	Satyam Ray      :   https://github.com/batmans0123456

