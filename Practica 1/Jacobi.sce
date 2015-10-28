function jacobi(A,B,P,tol,itx)
//A es una matriz no singular N X N
//B es una matriz N x 1, osea el vector resultado 
//P es una matriz N x 1, los supuestos iniciales 
//err es la tolerancia para P 
//itx es el numero maximo de iteraciones 
N = length(B);
for  k = 1:itx
   for  j = 1:N
      X(j) = (B(j) - A(j, [1:j-1, j+1:N]) * P([1:j-1, j+1:N])) / A(j, j);
   end
   err = abs(norm(X-P));
   relerr = err/(norm(X));
   P = X';
   if  (err < tol)  |  (relerr < tol)
     break
   end
end
X = X';
printf(X);
printf(k);
printf(err);
// es una matriz N X 1, la aproximación de jacobi a la solución AX = B
endfunction

