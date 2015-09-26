function y=f(x)
    y=(x-(%e^x));
endfunction

function root=Graeffe(xn,e)
it = 0;
printf('+-----------+-----------------------+----------------------+\n');
printf('| Iteracion |      xn               |  error               |\n');
printf('+-----------+-----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f | |\n',it,xn,e);
    while ((abs(f(xn))>e)&(it<5))
        it = it+1;
        xni=xn-(((f(xn))^2)/(f(xn+(f(xn)))-f(xn)))
        xn=xni;
        printf('| %9d | %20.15f | %20.15f |\n',it,xn,e);
    end
endfunction 
