import time

sub = input("enter sub name :")
up = sub.upper()
lo = sub.lower()
cam = sub.capitalize()
print(up, lo, cam)
L2=['', up, lo, cam, up+"@", lo+"@", cam+"@"]
L=[]

#start = time.time()
#f = open("first.txt",'w')
#for i in range(0,100000):
#    L.append(str(i))
#    L.append(up + str(i))
#    L.append(lo + str(i))
#    L.append(cam + str(i))
#    L.append(up+ "@" + str(i))
#    L.append(lo+ "@" + str(i))
#    L.append(cam+ "@" + str(i))
#
#L.sort()
#for i in L:
#    f.write(i + "\n")
#print(L)
#f.close()
#end = time.time()
#print("first : ",end-start)


L=[]

start = time.time()
f = open("second.txt",'w')
for i in range(0,100000):
    #L.append(str(i))
    f.write(str(i)+"\n")
for i in range(0,100000):
    #L.append(up + str(i))
    f.write(up + str(i)+"\n")
for i in range(0,100000):
    #L.append(lo + str(i))
    f.write(lo + str(i)+"\n")
for i in range(0,100000):
    #L.append(cam + str(i))
    f.write(cam + str(i)+"\n")
for i in range(0,100000):
    #L.append(up+ "@" + str(i))
    f.write(up+ "@" + str(i)+"\n")
for i in range(0,100000):
    #L.append(lo+ "@" + str(i))
    f.write(lo+ "@" + str(i)+"\n")
for i in range(0,100000):
    #L.append(cam+ "@" + str(i))
    f.write(cam+ "@" + str(i)+"\n")

print(L)
f.close()
end = time.time()
print("second : ", end-start)
