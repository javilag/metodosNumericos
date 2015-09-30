//function y=f(x)
//y=exp(-x^2)-x;
//endfunction

function x = secanteM(g,xi,dx,tol,imax)
func = deff(g);
i=0;
fval1=f(x);
fval2=f(x+1);
xid=xi+d;
fxi=func(xi);
fxid=func(xid);
x(1)=x0;
x(2)=x1;
ea(i)=100;
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
    fxi=func(xr);
    fxid=func(xid);
    i=i+1;

end
 
printf(' i \t\t x(i) \t Error aprox (i) \n');
printf('%2d \t %11.7f \t \n',0,x(1));
//printf('Modified Secant Method\n')
//printf('xr = %d\n',xr)
//printf('ea = %d\n',ea)
//printf('# of interations = %d\n',i)
endfunction
