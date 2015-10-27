function newtonraphsonMd(f,df,d2f,p0,tol,it);
i=1;
printf('+-----------+----------------------+----------------------+\n');
printf('| Iteracion |        x(i)          |      error           |\n');
printf('+-----------+----------------------+----------------------+\n');
printf('| %9d | %20.15f | %20.15f |\n',i,p0,tol);
for  k = 1:it	
    x1=feval(f, p0);
    x2=feval(df, p0);
    x3=feval(d2f, p0);
	p1 = p0 - x1*x2 / ((x2)^2-x1*x3);
	err = abs(p1 - p0);
	p0 = p1;
    if  (err > tol)
        i=i+1;
        printf('| %9d | %20.15f | %20.15f |\n',i,x(i),ea(i));
        X(K+1)=p1;
        Y(k+1)=k;
    else
        k=it;
    end
end
plot(X,Y, 'ro:');
endfunction 
