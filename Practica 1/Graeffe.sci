function Graeffe(xn,e,itx,f)
//f es la función que se ingresara entre comillas
//xn es un punto 
//e es la tolerancia
//itx es el numero maximo de iteraciones   
it=1;
x(1)=xn;
printf('+-----------+-----------------------+----------------------+\n');
printf('| Iteracion |      xn               |  error               |\n');
printf('+-----------+-----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f | |\n',it,xn,e);
while (it<itx)
    x=xn
    fxn=evstr(f);
    x=xn+fxn
    fxnn=evstr(f);
    it = it+1;
    if abs(fxn)>=e
        xni=xn-(((fxn)^2)/(fxnn-fxn))
        Y(it+1)=xni;
        X(it+1)=it;
        xn=xni;
        printf('| %9d | %20.15f | %20.15f |\n',it,xn,fxn);
    else
        itx=it;
    end
end
plot(X,Y);
//se grafica la raiz 
endfunction 

