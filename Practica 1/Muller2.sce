function Muller(f,x0,x1,x2,ef,ei,maxit)
it = 0;
rai=0;
x=x0
fx0=evstr(f);
x=x1
fx1=evstr(f);
x=x2
fx2=evstr(f);
d=1;
printf('+-----------+----------------------+----------------------+----------------------+----------------------+\n');
printf('| Iteracion |        x0            |         x1           |          x2          |        error         |\n');
printf('+-----------+----------------------+----------------------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f | %20.15f | %20.15f |\n',it,x0,x1,x2,ei);

for k=1:maxit;
    if(abs(fx2)<=ef)
        d=(x0-x1)(x0-x2)(x1-x2)
        if(abs(d)<=ei)
            a=((-(x0-x2)*(fx1-fx2))+(((x1-x1)*(fx0-fx2))))/d;
            b=(((x0-x2)^2)*(fx1-fx2)-(((x1-x2)^2)*(fx0-fx2)))/d;
            c=fx2;
            r=sqrt((b^2)-(4*(a)*(c)))
            n1=b+r;
            n2=b-r;
            if(n1<=n2)
                n=n2;
            else
                n=n1;
            end
            if(n<=ei)
                x3=(x2-(2*(c)))/n
                x0=x1
                x1=x2
                x2=x3
                fx0=fx1
                fx1=fx2
            else
                k=maxit
            end
            
        end
    else
        it=it+1;
        r=x2;
        info=1;
        k=maxit
    end
    printf('| %9d | %20.15f | %20.15f | %20.15f | %20.15f |\n',it,fx0,fx1,fx2,d);
end

endfunction 
