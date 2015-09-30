function y=f(x)
    y=(x-(%e^x));
endfunction

function root=Muller(p,x0,x1,x2,ef,ei,maxit)
it = 0;
rai=0;
for k=1:maxit;
    if(abs(f(x2))<=ef)
        d=(x0-x1)(x0-x2)(x1-x2)
        if(abs(d)<=ei)
            a=((-(x0-x2)*(f(x1)-f(x2)))+(((x1-x1)*(f(x0)-f(x2)))))/d;
            b=((((x0-x2)^2)*(f(x1)-f(x2))-(((x1-x2)^2)*(f(x0)-f(x2))))/d;
            c=f(x2);
            r=sqrt((b^2)-(4*(a)*(c)))
            n1=b+r;
            n2=b-r;
            if(n1<=n2)
                n=n2;
            else
                n=n1;
            end
            if(n<=ei)
                x3=(x2-(2*(c)))/n
                x0=x1
                x1=x2
                x2=x3
                f(x0)=f(x1)
                f(x1)=f(x2)
            else
                k=maxit
            end
            
        end
    else
        r=x2;
        info=1;
        k=maxit
    end
end

endfunction 
