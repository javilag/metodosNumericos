function y=f(x)
    y=exp(-x^2)-x;
endfunction
 
 
function xr=hibrido(xai,xbi,tol)
i=1;
c=a; 
n=0;
ea(1)=100;
xa(1)=xai;
xb(1)=xbi;
xr(1)=(xa(1)+xb(1))/2;
printf('It.\t\t Xa\t\t Xr\t\t Xb\t  Error  \n');
printf('%2d \t %11.7f \t %11.7f \t %11.7f \n',i,xa(i),xr(i),xb(i));
while abs(ea(i)) >= tol
    if f(xai)*f(xbi) > 0
        if 
        else 
        end
    else
        if f(xa(i))*f(xr(i))< 0
            xa(i+1)=xa(i);
            xb(i+1)=xr(i);
        end
        if f(xa(i))*f(xr(i))> 0
            xa(i+1)=xr(i);
            xb(i+1)=xb(i);
        end      
        xr(i+1)=(xa(i+1)+xb(i+1))/2;
        ea(i+1)=abs((xr(i+1)-xr(i))/(xr(i+1))*100);
        printf('%2d \t %11.7f \t %11.7f \t %11.7f \t %7.3f \n',i+1,xa(i+1),xr(i+1),xb(i+1),ea(i+1));
        i=i+1;
    end
end
endfunction
function bis()
    a=-2;//input('Ingrese el limite inferior del intervalo: ');  //Limite inferior del intervalo
    b=-1;//input('Ingrese el limite superior del intervalo: ');  //Limite superior del intervalo
    error_maximo=0.0000000000001;//input('Ingrese el error maximo aceptable: ');  //Error maximo aceptable      
    error_calculado=1;          //Error calculado.  Se asigna un valor inicial alto para que pueda entrar al ciclo
    iteracion=0;   //Contador del numero de iteraciones
    if (f(a)*f(b))>0 then  //Determinar si existe por lo menos una raiz en el intervalo [a, b]
        //No existen raices en el intervalo
        printf('No existe una raiz en este intervalo')
    else
        //Si existe por lo menos una raiz en el intervalo [a, b]
        //Escribir el encabezado de la tabla
        printf('+-----------+----------------------+----------------------+----------------------+----------------------+\n');
        printf('| Iteracion |      a               |       b              |       c              |  error               |\n');
        printf('+-----------+----------------------+----------------------+----------------------+----------------------+\n');
        printf('| %9d | %20.15f | %20.15f | ******************** | ******************** |\n',iteracion,a,b);

        while (error_maximo<error_calculado) do
            iteracion=iteracion+1;
           //Calcula el punto medio del intervalo
           c=(a+b)/2;
           //Si la funcion evaluada en c es cero, se hallo una raiz exacta y se entrega el resultado
           if (f(c)==0) then 
               printf('| %9d | %20.15f | %20.15f | %20.15f | %20.15f |\n',iteracion,a,b,c,error_calculado);
               //printf('+-----------+----------------------+-----------------------+----------------------+----------------------+\n');
           else
               //Se determina cual de los dos extremos del intervalo se deben cambiar por el punto medio
               if (f(c)*f(b))<0 then
                   //Cambia el limite aa
                  a=c;
              else
                  //Cambia el limite b
                  b=c;
              end
          end
          //Se calcula el error en esta iteracion
          error_calculado=abs(a-b);
          
          //Se escriben los resultados en forma de tabla
          printf('| %9d | %20.15f | %20.15f | %20.15f | %20.15f |\n',iteracion,a,b,c,error_calculado);
          
        
      end
      //Cerrar la tabla de datos y presentar el resultado final
      printf('+-----------+----------------------+----------------------+----------------------+----------------------+\n');
      printf('\n\nSolucion  --  Raiz aproximada para X= %20.15f',c) 
    end
endfunction
