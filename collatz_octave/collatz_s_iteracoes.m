###########################(COLLATZ CONJECTURE)#################################
#                                                                              #
#                     Unsolved problem in mathematics:                         #
#                                                                              #
#       #Does the Collatz sequence eventually reach 1                          # 
#                                #for all positive integer initial values?     #
#                                                                              #
################################################################################                                
clear;
home;
cont=0;%ja que temos a raiz n podemos comecar em zero 

i=input("Inicial: ");
B=input("Final: ");

while(i<=B)
  
  cont=0;
  #root=input("Informe um inteiro positivo: "); %dado inicial
  root=i;
  

  resposta(1)=root;

  while(root!=1) 
    
    cont++;
    if (mod(root,2)==0)%par
      root=root/2;
      resposta(cont+1)=root;
    elseif %impar
      root=3*root+1;
      resposta(cont+1)=root;     
    endif  
  endwhile  
 
  save "-append" "resposta.txt" resposta
  clear resposta;
  
  i=i+1;
  
endwhile
    
    