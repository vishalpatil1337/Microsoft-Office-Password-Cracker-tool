sub = input("enter subject name :")
up = sub.upper()
lo = sub.lower()
cam = sub.capitalize()
f = open("second.txt",'w')
for i in range(0,100000):
    f.write(str(i)+"\n")
if not (sub=="" or sub.isspace()):
    for i in range(0,100000):
        f.write(up + str(i)+"\n")
    for i in range(0,100000):
        f.write(lo + str(i)+"\n")
    for i in range(0,100000):
        f.write(cam + str(i)+"\n")
    for i in range(0,100000):
        f.write(up+ "@" + str(i)+"\n")
    for i in range(0,100000):
        f.write(lo+ "@" + str(i)+"\n")
    for i in range(0,100000):
        f.write(cam+ "@" + str(i)+"\n")
f.close()
print ("wordlist created sucessfully")
