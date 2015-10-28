function Muller(f,x0,x1,x2,ef,maxit)
//f es la función que se ingresara entre comillas
//x0 es primer punto 
//x1 es el segundo punto 
//x2 es el tercer punto 
//ef es la tolerancia
//maxit es el numero maximo de iteraciones   
rai=0;
d=1;
k=1;
printf('+-----------+---------------------+-----------------------+\n');
printf('| Iteracion |        R            |         error         |\n');
printf('+-----------+---------------------+-----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',k,x0,ef);
while k<maxit
    x=x0
    fx0=evstr(f);
    x=x1
    fx1=evstr(f);
    x=x2
    fx2=evstr(f);
    d=(x0-x1)*(x0-x2)*(x1-x2);
    if(abs(d)>=ef)
            a=(((-(x0-x2))*(fx1-fx2))+(((x1-x1)*(fx0-fx2))))/(d);
            b=(((x0-x2)^2)*(fx1-fx2)-(((x1-x2)^2)*(fx0-fx2)))/(d);
            c=fx2;
            r=sqrt((b^2)-(4*(a)*(c)))
            n1=b+r;
            n2=b-r;
            if(abs(n1)<=abs(n2))
                n=n2;
            else
                n=n1;
            end
            x3=(x2-(2*(c)))/n
            x0=x1
            x1=x2
            x2=x3
            fx0=fx1
            fx1=fx2
            k=k+1;
            printf('| %9d | %20.15f | %20.15f |\n',k,x3,abs(d));
            Y(k+1)=r;
            X(k+1)=k;
    else
        r=x2;
        k=maxit;
    end
end
plot(X,Y);
endfunction 
