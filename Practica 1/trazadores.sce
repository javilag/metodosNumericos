function trazadorcubi(X)
//Es necesario que cada trazador que se ingrese sea una matriz diferente
//para encontrar los posibles errores
//los puntos que se escogieron fueron del carro de la compañera berly estafania
//ya que ella cancelo la clase, dentro de la carpeta abra un archivo de excel
//llamado puntoTraza que contendra los trazadores y los puntos para formar el 
//dibujo 
n=length(X(1,:));

for i=1:n
    a(i)=X(2,i);
end

for i=1:n-1
    h(i)=X(1,i+1)-X(1,i);
end

for i=2:n-1
    alfa(i)=3/h(i)*(a(i+1)-a(i))-3/h(i-1)*(a(i)-a(i-1));
end

l(1)=1;
mu(1)=0;
z(1)=0;

for i=2:n-1
    l(i)=2*(X(1,i+1)-X(1,i-1))-h(i-1)*mu(i-1);
    mu(i)=h(i)/l(i);
    z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i);
end

l(n)=1;
z(n)=0;
c(n)=0;

for i=n-1:-1:1
    c(i)=z(i)-mu(i)*c(i+1);
    b(i)=(a(i+1)-a(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3;
    d(i)=(c(i+1)-c(i))/(3*h(i));
end

for i=1:n-1
    x=X(1,i):0.1:X(1,i+1);
    y=a(i)+b(i)*(x-X(1,i))+c(i)*(x-X(1,i)).^2+d(i)*(x-X(1,i)).^3;
    plot(x,y);
end
//,'b' por si algo
for i=1:n
    plot (X(1,i),X(2,i),'*','MarkerEdgeColor','r','LineWidth',1);
end 
endfunction
