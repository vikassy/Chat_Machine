a=input()
for i in range(0,a):
    p=""
    b=input()
    c=raw_input()
    c=c.split()
    c=map(int,c)
    j=0
    while(j<b):
        if(c[j]%2==0):
            c[j]=c[j]/2
        else:
            i=0
            while(2**i<c[j]):
                i+=1
            c[j]=c[j]/2+2**(i-1)
        j=j+1
    k=0
    for k in c:
        p=p+str(k)+" "
    print p
