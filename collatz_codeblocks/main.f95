program collatz


integer i,cont,root,B
i=0
B=0
cont=0
root=0
open(unit=122,file="vetores.txt",action="write")
write(*,*) "Inicial: "
read(*,*) i
write(*,*) "Final: "
read(*,*) B

  write(122,*) root

do while(i.le.B)

cont=0
root=i

    do while(root.ne.1)
        cont=cont+1
            if(mod(root,2).eq.0)then!par
                root=root/2;
                write(122,*) root
            elseif (mod(root,2).ne.0)then !impar
                root=3*root+1;
                write(122,*) root
            endif
    enddo

    write(12,*)". "

i=i+1
enddo


close(122)
  re_i = system("pause")
end
