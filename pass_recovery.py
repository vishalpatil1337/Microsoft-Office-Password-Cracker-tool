sub = input("enter subject name :")
up = sub.upper()
lo = sub.lower()
cam = sub.capitalize()
L=[]
f = open("second.txt",'w')
for i in range(0,100000):
    f.write(str(i)+"\n")
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
print(L)
f.close()
print ("wordlist created sucessfully")
