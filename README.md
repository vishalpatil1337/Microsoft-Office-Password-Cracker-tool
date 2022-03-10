# Microsoft-Office-Password-Cracker-tool
Using Microsoft Office Password Cracker tool we can crack any Microsoft Office file's password.This tool is using office2john.py &amp; john tool. wordlist generator is also included in python script.


During my exam period i used this tool to crack ms word password & it worked.




# How To Use This Tool

1) Download this tool and save it using git clone.
2)  cd Microsoft-Office-Password-Cracker-tool && chmod +x *
3) ./ms-word-file-cracker.sh       

   a) script will start and will make tryhackme name folder on your desktop. 
   
   b) it will download office2john.py script using curl command
   
   c) if there is office2john.py alredy exist the second file will be remove using rm command.


   d) enter subject name :     here you need to write any subject name for example ai  (artificial intelligence). 
                                it will make Wordlist 0-99999 , ai1-9999, AI0-99999,ai@0-99999 in this format. 
                                in exam password is probably like subject name then 3 to 6 letters - example ai123  
                                
 
   e) after making wordlist it will ask "enter MS WORD file name with full path"
                                you need to give full path. example - /home/kali/Desktop/tryhackme/file.docx
  
  
   f) Attack will start. It will take some time depending of your PC performance, just dont close the tool. 


   g) After some time you will get a password. 
  
  
  
  # Video Tutorial

https://youtu.be/ddbPlvEJpQo




#



Special Thanks to -:  Omkar Kalantre  :   https://www.linkedin.com/in/omkar-kalantre/

