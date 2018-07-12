###########################(COLLATZ CONJECTURE)#################################
#                     Unsolved problem in mathematics:

       #Does the Collatz sequence eventually reach 1 
                                #for all positive integer initial values?

clear;home;

root=0;
cont=2;
iteracoes=0;

while(root<=0)
  root=input("Informe um inteiro positivo: "); %dado inicial
endwhile
 
iteracoes=input("Informe o maximo de iteracoes: "); %maximo de iteracoes

%resposta=zeros(iteracoes,1);
resposta(1)=root;

while((cont<=iteracoes)&&(root!=1)) 

  if (mod(root,2)==0)%par

    root=root/2;
    resposta(cont)=root;
    
  elseif (mod(root,2)!= 2) %impar
    
    root=3*root+1;
    resposta(cont)=root;
    
  endif  
  
  cont=cont+1;

endwhile  

printf("\nNumero de iteracoes realizadas: %d\n\n",cont)

disp("Vetor resposta:");
resposta