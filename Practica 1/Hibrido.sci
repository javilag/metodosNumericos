function Hibrido(f,a,b,itx,e)    
    k=1;
    x(1)=a;
    x(2)=b;
    A(1)=0;
    A(2)=a;
    printf('+-----------+----------------------+----------------------+\n');
    printf('| Iteracion |         r            |      error           |\n');
    printf('+-----------+----------------------+----------------------+\n');
    printf('| %9d | %20.15f | %20.15f |\n',k,x(1),e);
    while k<itx
        xn=b;
        x=xn
        fx=evstr(f);
        an=a;
        x=an
        fa=evstr(f);
        et=abs(an-xn);
        if(et>=e)
            //if(abs(fa)>abs(fx))
                xnm=a;
                x=xnm
                fmx=evstr(f);
                deltaB=(an-xn)/2;
                difdiv=(fx-fmx)/(xn-xnm)
                if (difdiv~=0)//aca va un ~=
                    deltaS=-(fx/difdiv);
                    if((deltaS*deltaB)>0)&(abs(deltaS)<abs(deltaB))
                        x(k+1)=xn+deltaS;
                        printf('| %9d | %20.15f | %20.15f |\n',k,x(k+1),et);
                      
                    else
                        x(k+1)=xn+deltaB;
                        printf('| %9d | %20.15f | %20.15f |\n',k,x(k+1),et);
                        
                    end
                else
                    x(k+1)=xn+deltaB;
                    printf('| %9d | %20.15f | %20.15f |\n',k,x(k+1),et);
                end
                xmm=x(k+1);//esto es un x+1 segun el pseudo algoritmo
                x=xmm
                fxm=evstr(f);
                if(fa*fxm)<0
                    A(k+1)=an;
                else
                    A(k+1)=xn;
                end
                k=k+1;
                Y(k)=k;
            //else
                //an=b;
                //xn=a;
                //k=k+1;
                //printf('no hay raiz, perdon');
            //end
        else
            printf('no hay raiz, perdon');
            k=itx;
        end
    end
    plot(x,Y);
endfunction 
