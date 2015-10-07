function y=f(x)
y=exp(-x)-log(x);
endfunction
 
function y=df(x)
y=-exp(-x)-1/x;
endfunction
 
 function y=d2f (x)
     y
 endfunction
function x=newtonraphson(x0,tol);
    
i=1;
ea(1)=100;
x(1)=x0;
while abs(ea(i))>=tol;
    
    X(i+1)=(f(x(i))*df(x(i)))/(((df(x(i)))^2)-((f(x(i)))*(d2f(x(i)))));
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
