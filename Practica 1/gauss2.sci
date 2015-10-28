clc 
funcprot(0) 
A=[4,-2,-1;5,1,-1;1,2,-1] 
b=[9;7;12] 
res=["X1","X2","X3"] 
n=size(A,"r") 
xo=zeros(n,1) 
x=xo 
iter=0 
tol=1e-9 
norma=1 
function fx=gauss(xo,tol,iter,norma) 
    while norma> tol 
        iter=iter+1 
         
        for i=1:n 
            suma=0 
            for j=1:n 
                if i~=j then 
                    suma=suma+(A(i,j)+x(j)) 
                end                 
            end 
            x(i)=(b(i)-suma)/A(i,i) 
             
        end 
        norma=norm(xo-x) 
         
        xo=x 
         
    end 
    for z=1:3 
        printf("La solución para %s es %f\n",res(z),x(z))            
    end 
     
endfunction 
