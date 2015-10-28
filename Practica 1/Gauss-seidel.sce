function gauss(A,B,P,tol,itx)
//A es una matriz no singular N X N
//B es una matriz N x 1, osea el vector resultado 
//P es una matriz N x 1, los supuestos iniciales 
//err es la tolerancia para P 
//itx es el numero maximo de iteraciones 
N = length(B);
for  k = 1:itx
   for  j = 1:N
      if  j == 1
        X(1)=(B(1)-(A(1,2:N)*P(2:N)))/A(1,1);
      elseif  j ~= N//lol
        // X contiene la k-esima aproximacion  y  P la (k-1)-esima
        X(j)=(B(j) - A(j,1:j-1)*X(1:j-1)'-A(j,j+1:N)*P(j+1:N))/A(j, j);
      else
        X(N)=(B(N)-(A(N,1:N-1)*(X(1:N-1))'))/A(N,N);
      end
   end
   err = abs(norm(X' - P));
   relerr = err / (norm(X) + eps);
   P = X';
      if  (err < tol)  |  (relerr < tol)
     break
   end
end

X = X';
k;
printf(X);
printf(k);
endfunction
