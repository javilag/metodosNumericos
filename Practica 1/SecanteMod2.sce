//function y=f(x)
//y=exp(-x^2)-x;
//endfunction

function  secanteM(f,xi,tol,imax)
i=1;
d=2;
printf('+-----------+----------------------+----------------------+\n');
printf('| Iteracion |        xi            |      error           |\n');
printf('+-----------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',i,xi,tol);
ea(i)=100;
while (i<imax)
    xid=xi+d;
    x=xi
    fxi=evstr(f);
    x=xid
    fxid=evstr(f);
    if(abs(ea(i))>=tol) 
        xr=xi-(fxi*(fxid-xi))/(fxid-fxi);
        ea(i+1)=abs((xr-xi)/xr);
        xi=xr;
        X(i)=xr;
        Y(i)=i;
        printf('| %9d | %20.15f | %20.15f |\n',i,xi,ea(i+1));
        i=i+1;
    else
        imax=i;
    end    
end
plot(X,Y);
endfunction
