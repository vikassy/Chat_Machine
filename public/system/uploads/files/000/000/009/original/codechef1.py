t=input()
while (t):
    t=t-1
    a=raw_input()
    a=a.split()
    a=map(int,a)
    n=a[0]
    x=a[1]
    flag=0
    z=raw_input()
    z=z.split()
    z=map(int,z)
    tot=0
    for i in z:
        tot=tot+i
    y=tot/float(x)
    if(y-(tot/x)==0):
        print tot/x
    else:
        for j in z:
            if(tot-x>=j):
                print "-1"
                flag=1
                break
        if (flag!=1):
            print tot/x
