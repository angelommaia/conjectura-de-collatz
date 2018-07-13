program collatz
integer i,cont,auxiliar,B,root
i=0
B=0
cont=0
auxiliar=0
open(unit=122,file="vetores.txt",action="write", status="unknown")
write(*,*) "Inicial: "
read(*,*) i
write(*,*) "Final: "
read(*,*) B

do while(i.le.B)
	cont=0 !deve ser zerado para cada novo numero
	auxiliar=i
	root=i
	write(122,'(I15.1)',advance='no') auxiliar
	do while(auxiliar.ne.1)
        cont=cont+1
            if(mod(auxiliar,2).eq.0)then!par
                auxiliar=auxiliar/2;
                write(122,'(I15.1)',advance='no') auxiliar
            elseif (mod(auxiliar,2).ne.0)then !impar
                auxiliar=3*auxiliar+1;
                write(122,'(I15.1)',advance='no') auxiliar
            endif
    enddo
    write(122,'(A1,//,A,i15,A,i10,/)')". "," Quantidade de iteracoes do numero ",root,": ",cont
i=i+1
enddo
close(122)
end
