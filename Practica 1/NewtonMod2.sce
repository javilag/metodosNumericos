
function newtonraphsonMd(f,df,d2f,x0,tol,it);
i=1;
x(1)=x0;
printf('+-----------+----------------------+----------------------+\n');
printf('| Iteracion |        x(i)          |      error           |\n');
printf('+-----------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',i,x0,tol);
ea(i)=100;
while (i<it)
    x=x0;
    fxi=evstr(f);
    x=x0;
    dfxi=evstr(df);
    x=x0;
    d2fxi=evstr(d2f);
    if (abs(ea(i))>=tol)
        xr=((fxi)*(dfxi))/(((dfxi)^2)-((fxi)*(d2fxi)));
        ea(i+1)=abs((xr-x0)/xr);
        x0=xr;
        printf('| %9d | %20.15f | %20.15f |\n',i,x0,ea(i+1));
        i=i+1;
        X(i+1)=i;
        Y(i+1)=xr;
    else 
        i=it;
    end

end
plot(X,Y);
endfunction
