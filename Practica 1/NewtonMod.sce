
function x=newtonraphsonMd(f,df,d2f,x0,tol);
    
i=1;
ea(1)=100;
x(1)=x0;

while abs(ea(i))>=tol;
    x=x(i)
    fxi=evstr(f);
    x=x(i)
    dfxi=evstr(df);
    X(i+1)=((fxi)*(dfxi))/(((dfxi)^2)-((f(x(i)))*(d2f(x(i)))));
    ea(i+1)=abs((x(i+1)-x(i))/x(i+1)*100);
    i=i+1;
    Y(i+1)=i;
    plot(X,Y, 'ro:');
end
printf(' i  \t      X(i)      Error aprox (i) \n');
for j=1:i;
    printf('%2d \t %11.7f \t %7.3f \n',j-1,x(j),ea(j));
end
endfunction
