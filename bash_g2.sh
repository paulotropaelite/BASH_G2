#!/bin/bash

# Elaborado por paulo Júnior                   # Utilização do comando rsync e scp




principal() {                           # Função principal do programa
    clear                               # limpa a tela
    echo "[1] basch_g2"                 # imprime na tela as escolhas 
    echo "[2] SSH"               
    echo "[3] Sair"                                                                                                    
    echo
    echo -n "Diga a sua escolha?"
    read opcao          		# faz a leitura da variável "escolha", 
                        		# caso o valor da variável "escolha"...
    case $escolha in
        1)              		
            clear
            fun_1 ;;    		# executa os comandos da função "fun_1" e finaliza a escolha do case com ";;"
        		
        2)
            clear
            fun_2 ;;	                # executa os comandos da função "fun_2" e finaliza a escolha do case com ";;" 

        3)
            clear
            exit ;;

        *)              	        # esta escolha existe para caso o usuário digite um 
                        	        # valor diferente de 1, 2, 3.
            clear
            echo "Escolha não encontrada"
            read pause
            principal   	        # volta para o menu inicial
            ;;
    esac
}


fun_1() {             					                                  # função fun_1 entrará no case
    clear               					                          # limpará a tela
    echo "[1] Vai fazer a copia da pasta local utilizando o comando basch_g2"             # imprimerá na tela as escolhas que serão abordadas
    echo "[2] Vai fazer a copia da pasta com SSH utilizando o comando basch_g2"              
    echo "[3] Irá fazer a copia do arquivo com SSH Utilizando o comando basch_g2" 
    echo "[4] Irá fazer a copia do arquivo local Utilizando o comando basch_g2"                       
    echo "[5] Sair"                                                                     
    echo
    echo -n "Diga a sua escolha?"
    read escolha1          		# mostra a leitura da variável "escolha", 
                        		
                        		
    case $escolha1 in
        1)              		# seja igual a "1", então faça as instruções abaixo
            clear
            fun_B1 ;;   # utiliza a função fun_B1 e finaliza a escolha do case com ";;"		
                        		
        2)
            clear
            fun_B2 ;;	# utiliza a função fun_B2 e finaliza a escolha do case com ";;"
        
        3)
            clear
            fun_B3 ;;	# utiliza a função fun_B3 e finaliza a escolha do case com ";;"

        4)
            clear
            fun_B4 ;;	# utiliza a função fun_B4 e finaliza a escolha do case com ";;"
        
        5)
            clear
            exit ;;

        *)              	# esta escolha existe para caso o usuário digite um 
                        	# valor diferente de 1, 2, 3, ... 12
            clear
            echo "Escolha não encontrada"
            read pause
            principal   	# volta para o menu inicial
            ;;
    esac
}
    
fun_2() {             					# função da escolha 5
    clear                                                                # Faz a limpeza da tela
    echo "[1] Copia do arquivo no mesmo local utilizando SCP"            # imprime na tela as escolhas que serão
    echo "[2] Copia do arquivo remota utilizando SCP"                    # abordadas no comando case 
    echo "[3] Copia da pasta local utilizando SCP"                       # imprime na tela as escolha que serão
    echo "[4] Copia da pasta remota utilizando SCP"                      # abordadas no comando case                            
    echo "[5] Sair"                                                                     
    echo
    echo -n "Diga a sua escolha?"
    read escolha2          		# faz a leitura da variável "escolha", 
                        		     		
                        		
    case $escolha2 in
        1)              		
            clear
            fun_S1 ;;    		# usa a função fun_S1 e finaliza a escolha do case com ";;"

                        		
        2)
            clear
            fun_S2 ;;	                # usar a função fun_S2 e finalizar a escolha do case com ";;"
       
        3)              		
            clear
            fun_S3 ;;    		# usar a função fun_S3 e finalizar a escolha do case com ";;"

                        		
        4)
            clear
            fun_S4 ;;			# usar a função fun_S4 e finalizar a escolha do case com ";;"

       
        5)
            clear
            exit ;;

        *)              	        # esta escolha existe para o caso do usuário digitar um 
                        	        # valor diferente de 1, 2, 3, 4, 5.
            clear
            echo "Escolha não encontrada"
            read pause
            principal   	        # Selecione para voltar ao menu inicial do programa
            ;;
    esac
}
    
fun_B1() {             					# função da escolha fun_B1 vai copiar dos arquivos com rsync apenas local
    clear
    echo "informar a pasta que irá copiar com o caminho e não colocar no final a barra /" 	# vai imprimir a mensagem entre "" na tela	
    read fms_1;				                                                        # captura a palavra digitada 
    echo "informe o caminho para o destino"		                                        # vai imprimir a mensagem entre "" na tela
    read des_1;					                                                # Faz a captura a palavra digitada
    rsync -avr --progress $fms_1 $des_1   	    
    read pause
    principal
}

fun_B4() {             					# função da escolha fun_B4 vai copiar as pastas com rsync apenas em redes
    clear
    echo "informar a pasta que irá copiar com o caminho e não colocar no final a barra /" # vai imprimir a mensagem entre "" na tela		
    read fms_1;				                                                  # captura a palavra digitada 
    echo "informe o caminho para o destino"	                                          # vai imprimir a mensagem entre "" na tela
    read des_1;				                                                  # Faz a captura a palavra digitada 
    rsync -av --progress $fms_1 $des_1   	    
    read pause
    principal
}

fun_B2() {             					# função da escolha fun_B2 vai copiar as pastas com rsync apenas em redes
    clear
    echo "informe o diretorio que irá copiar com o caminho e lembrar de não colocar no final a barra /" 			
    read fms_2;				                # Vai capturar a palavra digitada 
    echo "informe o caminho para o destino"		# Vai imprimir a mensagem entre "" na tela
    read des_2;					        # vai capturar a palavra digitada 
    echo "informe o usuário do cpu remoto"              # Vai imprimir a mensagem entre "" na tela
    read cpu_1;					        # Vai capturar a palavra digitada 
    echo "informe o ip do cpu remoto"	                # Vai imprimir a mensagem entre "" na tela	
    read ip_1;					        # vai capturar a palavra digitada 
    echo "digite a porta ssh"			        # Vai imprimir a mensagem entre "" na tela
    read port_1;				        # vai capturar a palavra digitada 
    rsync -avr --progress $dir_2 -e "ssh -p$port_1" $cpu_1@$ip_1:$des_2    	    
    read pause
    principal
}

fun_B3() {             					# função da opção fun_B3 vai copiar as pastas com rsync apenas em redes
    clear
    echo "informe o arquivo que irá copiar com o caminho" 	# Vai imprimir a mensagem entre "" na tela		
    read arq_3;				       		        # Vai capturar a palavra digitada
    echo "informe o caminho para o destino"			# Vai imprimir a mensagem entre "" na tela
    read des_3;						        # Vai capturar a palavra digitada
    echo "informe o usuário do cpu remoto"		        # Vai imprimir a mensagem entre "" na tela
    read cpu_3;						        # Vai capturar a palavra digitada
    echo "informe o ip do cpu remoto"		                # vai imprimir a mensagem entre "" na tela	
    read ip_3;						        # Vai capturar a palavra digitada
    echo "informe qual é a porta ssh"				# Vai imprimir a mensagem entre "" na tela
    read port_3;					        # vai capturar a palavra digitada
    rsync -av --progress $arq_3 -e "ssh -p$port_3" $cpu_3@$ip_3:$des_3    	    
    read pause
    principal
}

fun_S1() {             					# função da escolha fun_S1 vai copiar os arquivos com scp apenas local
    clear
    echo "informe o arquivo que irá copiar com o caminho "     # Vai imprimir a mensagem entre "" na tela		
    read fms1;				                       # Vai capturar a palavra digitada
    echo "informe o caminho para o destino"		       # Vai imprimir a mensagem entre "" na tela
    read des1;					               # Vai capturar a palavra digitada
    scp  $fms1 $des1   	    
    read pause
    principal
}

fun_S2() {             					# função da escolha fun_S2 vai copiar os arquivos com scp apenas local
    clear
    echo "informe o arquivo que irá copiar com o caminho" 	# Vai imprimir a mensagem entre "" na tela		
    read fms2;				       		        # Vai capturar a palavra digitada
    echo "informe o caminho para o destino"		        # Vai imprimir a mensagem entre "" na tela
    read des2;						        # Vai capturar a palavra digitada
    echo "informe o usuário do cpu remoto"		        # Vai imprimir a mensagem entre "" na tela
    read cpu3;   					        # Vai capturar a palavra digitada
    echo "informe o ip do cpu remoto"		                # Vai imprimir a mensagem entre "" na tela	
    read ip3;						        # Vai capturar a palavra digitada
    echo "informe qual é a porta ssh"				# Vai imprimir a mensagem entre "" na tela
    read port3;						        # Vai capturar a palavra digitada
    scp  -P$port3  $fms2 $cpu3@$ip3:$des2    	    
    read pause
    principal
}

fun_S3() {             					# função da escolha fun_S3 vai copiar os arquivos com scp apenas local
    clear
    echo "informe o diretorio que irá copiar com o caminho"     # Vai imprimir a mensagem entre "" na tela			
    read fms5;				                        # Vai capturar a palavra digitada
    echo "informe o caminho para o destino"			# Vai imprimir a mensagem entre "" na tela
    read des5;						        # Vai capturar a palavra digitada
    scp -r $fms5 $des5   	    
    read pause
    principal
}

fun_S4() {             					# função da escolha fun_S4 vai copiar os arquivos com scp apenas local
    clear
    echo "informe o diretorio que irá copiar com o caminho"     # Vai imprimir a mensagem entre "" na tela			
    read fms4;				             	        # Vai capturar a palavra digitada
    echo "informe o caminho para o destino"			# Vai imprimir a mensagem entre "" na tela
    read des4;						        # Vai capturar a palavra digitada
    echo "informe o usuário do cpu remoto"		        # Vai imprimir a mensagem entre "" na tela
    read cpu4;   					        # Vai capturar a palavra digitada
    echo "informe o ip do cpu remoto"		                # Vai imprimir a mensagem entre "" na tela
    read ip4;						        # Vai capturar a palavra digitada
    echo "informe qual é a porta ssh"				# Vai imprimir a mensagem entre "" na tela
    read port4;						        # Vai capturar a palavra digitada
    scp -r -P$port4  $fms4 $cpu4@$ip4:$des4   
    read pause
    principal
}

escolha_invalida() {      # função da escolha inválida 3
    clear 
    echo "Escolha não encontrada"
    read pause
    principal
}

principal               # o script elaborado é visto por aqui, e as funções das linhas anteriores
                        # serâo lidas pelo interpretador bash e é onde serão armazenadas na memória 
                        # o bash não tem como saber qual das funções ele deverá 
                        # executar, por isto a execução do script realmente irá começar            
                        # quando aparecer uma instrução fora de uma função, neste caso,
			# chamando a função principal
