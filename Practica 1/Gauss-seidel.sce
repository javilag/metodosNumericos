A = [ 1 2 3; 5 6 7; 3 1 9];
C = [5 4 3];
N = rank(A);
for k = 1:N
    B(K,1) = B(k,1)/A(k,k);
    A(k,:) = A(k,:)/A(k,k);
end
D = eye(N);
L = zeros(N);
U = zeros(N);
A = A-D;
for k = 1:N-1
    L(k:N,k) = A(k:N,k);
    U(k,k:N) = A(k,k:N);
end
F = -inv(D+L)*U;
Rs= max(abs(eigs(F))
p = 5;
Ni= (p*log(10))/(-log(Rs));
Nm= fix(Ni)+1;
X = zeros(N,Nm);
X(:,1)=ones;
for k=2:Nm
    X(:,k) = F*X(:,k-1)+ inv(D+L)*B;
end
X 
