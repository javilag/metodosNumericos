function y = lmao(x)
    y = (x-(%e.^-x));
endfunction
error = input("Digite el error");
xn = input("digite primer calor de x")
xmait = input("digite la mayor iteracion")
it = 0;
while (it<xmait)
    while (abs(lmao(xn))>error)
        xni=xn-(((lmao(xn))^2)/(lmao(xn+(lmao(xn)))
        xn=xni;
        disp(xn)
        it= it+1;
    end
end
