program collatz
implicit none

integer i,cont,root,B
integer,allocatable,dimension(:)::resposta
i=0
B=0
cont=0
root=0
open(unit=12,file="vetores.txt",status="old",position="append",action="write")
write(*,*) "Inicial: "
read(*,*) i
write(*,*) "Final: "
read(*,*) B

  write(12,*) root
  
do while(i.le.B)  

  	cont=0
    root=i 
    	
		do while(root.ne.1)
			cont=cont+1
            	if(mod(root,2).eq.0)then!par
                	root=root/2;
                	write(12,*) root
                else !impar
                  	root=3*root+1;
                    write(12,*) root
           		endif
        enddo
        
		write(12,*)". "
        
	i=i+1
enddo 


close(12)
endprogram