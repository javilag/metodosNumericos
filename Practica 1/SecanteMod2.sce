//function y=f(x)
//y=exp(-x^2)-x;
//endfunction

function  secanteM(f,xi,tol,imax)
i=0;
xid=xi+d;
x=xi
fxi=evstr(f);
x=xid
fxid=evstr(f);
x(1)=x0;
x(2)=x1;
ea(i)=100;
printf('+-----------+----------------------+----------------------+\n');
printf('| Iteracion |        xi            |      error           |\n');
printf('+-----------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',i,xi,tol);
while (abs(ea(i))>=tol) & (i<imax)
    if (fxid-func(xi)) ~= 0
        xr=xi-(fxi*(fxid-xi))/(fxid-fxi);
    else
        xr=xi;
    end
    if xr ~=0
        ea=abs((xr-xi)/xr)*100;
    elseif xr==xi
        ea=0;
    end
    xid=xr+d;
    xi=xr;
    x=xr
    fxi=evstr(f);
    x=xid
    fxid=evstr(f);
    i=i+1;
    printf('| %9d | %20.15f | %20.15f |\n',i,xi,tol);
end
 
printf(' i \t\t x(i) \t Error aprox (i) \n');
printf('%2d \t %11.7f \t \n',0,x(1));
//printf('Modified Secant Method\n')
//printf('xr = %d\n',xr)
//printf('ea = %d\n',ea)
//printf('# of interations = %d\n',i)
endfunction
