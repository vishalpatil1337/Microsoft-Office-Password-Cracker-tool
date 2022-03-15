# Password-Cracker-Tool - Finds Password of Protected Files
Supports Cracking Passwords of All MS-Office-File Formats Including but not limited to :
Excel, Word, PDF, Rar, Zip Files

## Previous Version - Microsoft-Office-Password-Cracker-tool
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

   ## Steps to Crack the Passwords 
   
   1) Before running the tool, it is recommended to copy the password protected file in to the working directory of the tool
   
   2) now run the tool by typing **./ms-word-file-cracker.sh** in terminal

   3) Now, you will be showcased with 5 options, each options tries to crack different file formats. Type the option number you will need to use. (eg. 2 for PDF files)   
   
   4) After Selecting the option you will be prompted to type the full path of the file. if you have followed step 1, then you will only need to enter the name of the file (eg. Protected.pdf ), otherwise please enter the full path.
   
   5) Now, the tool will prompt you with 2 options, 1 to build a wordlist with subject details (ie. if the password format is your subject artificial intelligence and any number like. **ai2234**).
   
    
     enter subject name : ai  
     Now, our custom wordlist builder will make a Wordlist containing   
      
     • 0 - 9999  
     • ai0 - ai9999  
     • AI0 - AI9999  
     • ai@0 - ai@9999   
   
   6) And the 2nd option is to use a wordlist of your choice. Like i said you can copy the wordlist to working directory and enter it's name when prompted or enter the full path.

   7) Now, the tool will start to try every password on the wordlist upon the protected file and if successful we will get the password printed on the screen

   8) Copy that password and use it to open the files as usual.
   
  
  # Blog Tutorial of our Previous Version
  
**https://www.techxbyte.in/2022/03/how-i-cracked-question-paper-password-before-time-during-exam.html**
  
  # Video Tutorial of our Previous Version

**https://youtu.be/ddbPlvEJpQo**

Demo of the improvised tool will be updated shortly


#



Special Thanks to -: 

   •	Omkar Kalantre  :   https://github.com/omkar-ok :  www.linkedin.com/in/omkar-kalantre
   
   •	Samyam Ray      :   https://www.linkedin.com/in/samyam-ray-3b3815234/

