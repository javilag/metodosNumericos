
function newtonraphsonMd(f,df,d2f,x0,tol);
    
i=1;
ea(1)=100;
x(1)=x0;
printf('+-----------+----------------------+----------------------+\n');
printf('| Iteracion |        x(i)          |      error           |\n');
printf('+-----------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',i,x0,ea);

while abs(ea(i))>=tol;
    x=x(i)
    fxi=evstr(f);
    x=x(i)
    dfxi=evstr(df);
    x=x(i)
    d2fxi=evstr(d2f);
    X(i+1)=((fxi)*(dfxi))/(((dfxi)^2)-((fxi)*(d2fxi)));
    ea(i+1)=abs((x(i+1)-x(i))/x(i+1)*100);
    i=i+1;
    printf('| %9d | %20.15f | %20.15f |\n',i,x(i),ea(i));
    Y(i+1)=i;
    plot(X,Y, 'ro:');
end

endfunction
