def fact(l):
    s=1
    for i in range(1,l+1):
        s=s*i
    return s
a=raw_input()
a=a.split()
b=int(a[0])
c=int(a[1])
i=0
while(i<b):
    k=raw_input()
    k=k.split()
    k=map(int,k)
    t=k[0]*k[1]
    f=t/2.0
    t=t/2
    k=f-int(t)
    if k==0:
        if(t>2):
            l= (fact(t))/(fact(t-2)*2)
            print l%c
        else:
           print "1"
    else:
        print "NO"
    i=i+1
