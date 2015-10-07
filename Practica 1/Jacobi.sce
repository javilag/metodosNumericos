A = [ 1 2 3; 5 6 7; 3 1 9];
C = [5 4 3];
N = rank(A);
D = zeros(N);
L = zeros(N);
U = zeros(N);
K1= diag(A);
D = diag(K1); 
A = A-D;
for k = 1:N-1 
    L(k:N,k) = A(k:N,k);
    U(k,k:N) = A(k,k:N);
end
F = -inv(D)*(L+U);
Rs= max(abs(eigs(F));
p = 6;
Ni= (p*log(10))/(-log(Rs));
Nm= fix(Ni)+1;
X = zeros(N,Nm);
X(:,1)=ones;
for k=2:Nm
    X(:,k) = F*X(:,k-1)+ inv(D)*B;
end
X 

