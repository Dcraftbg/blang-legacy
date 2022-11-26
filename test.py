import io
def doSomethingCool(i,other):
    i.write(b"BRUH")
    if other:
        doSomethingCool(i,False)
with open("temp.txt","wb+") as f:
    doSomethingCool(f,True)
    f.seek(0,0)
    print(f.read())