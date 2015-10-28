//el algoritmo fue interpretado de la pagina http://www.mat.ucm.es/~fmacia/Docencia/MN/Matlab/root/hibrido.pdf
function Hibrido(f,a,b,itx,e)
//f es la función que se ingresara entre comillas
//a es un punto 
//b es un punto 
//e es la tolerancia
//itx es el numero maximo de iteraciones     
    k=2;
    o(1)=a;
    o(2)=b;
    A(1)=0;
    A(2)=a;
    printf('+-----------+----------------------+----------------------+\n');
    printf('| Iteracion |         r            |      error           |\n');
    printf('+-----------+----------------------+----------------------+\n');
    printf('| %9d | %20.15f | %20.15f |\n',1,o(1),e);
    while k<itx 
        xn=o(k);
        x=xn
        fx=evstr(f);
        an=A(k);
        x=an
        fa=evstr(f);
        et=abs(an-xn);
        if(et>=e)
            xnm=o(k-1);
            x=xnm
            fmx=evstr(f);
            deltaB=(an-xn)/2;
            difdiv=(fx-fmx)/(xn-xnm)
            if (difdiv~=0)//aca va un ~=
                deltaS=-(fx/difdiv);
                if((deltaS*deltaB)>0)&(abs(deltaS)<abs(deltaB))
                    o(k+1)=xn+deltaS;
                    printf('| %9d | %20.15f | %20.15f |\n',k,o(k+1),et);
                else
                    o(k+1)=xn+deltaB;
                    printf('| %9d | %20.15f | %20.15f |\n',k,o(k+1),et);
                end
            else
                o(k+1)=xn+deltaB;
                printf('| %9d | %20.15f | %20.15f |\n',k,o(k+1),et);
            end
            xmm=o(k+1);//esto es un x+1 segun el pseudo algoritmo
            x=xmm
            fxm=evstr(f);
            if(fa*fxm)<0
                A(k+1)=an;
            else
                A(k+1)=xn;
            end
            k=k+1;
            Y(k)=k;
        else
            printf('no hay raiz, perdon');
            k=itx;
        end
    end
    plot(Y,o);
endfunction 
