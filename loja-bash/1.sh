#musicas para stock (id,nome,grupo,estilo,formato,preco)
musica1=( 1001 Lamentavel Froid Rap CD 10 )
musica2=( 1002 Casinha Armandinho Reggae Vinil-45 12 )
musica3=( 1003 Massive Drake Rap DVD 8 )
musica4=( 1004 Porsche Sidoka Trap Fita 11 )
musica5=( 1005 Sticky Drake Rap Vinil-33 15 )
musica6=( 1006 Umbrella Rihanna Pop CD 12 )
musica7=( 1007 Diamonds Rihanna Pop DVD 16 )
musica8=( 1008 Fe Piruka Rap Vinil-45 23 )
musica9=( 1009 Lisabona Plutonio Rap Fita 12 )
musica10=( 1010 Yellow Coldplay Pop Vinil-33 12 )

#contador de n de vendas
m1=0
m2=0
m3=0
m4=0
m5=0
m6=0
m7=0
m8=0
m9=0
m10=0


#contador quantidade de unidades compradas
c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
c7=0
c8=0
c9=0
c10=0


# variaveis para data (compra e venda)

d1="Este item ainda não foi vendido" d2="Este item ainda não foi vendido"  d3="Este item ainda não foi vendido" d4="Este item ainda não foi vendido" d5="Este item ainda não foi vendido"
d6="Este item ainda não foi vendido" d7="Este item ainda não foi vendido" d8="Este item ainda não foi vendido" d9="Este item ainda não foi vendido" d10="Este item ainda não foi vendido"


dc1="Este item ainda não foi comprado" dc2="Este item ainda não foi comprado"  dc3="Este item ainda não foi comprado" dc4="Este item ainda não foi comprado" dc5="Este item ainda não foi comprado"
dc6="Este item ainda não foi comprado" dc7="Este item ainda não foi comprado" dc8="Este item ainda não foi comrpado" dc9="Este item ainda não foi comprado" dc10="Este item ainda não foi comprado"




cnt=100
while [ $cnt -ne 0 ]
do
	cnt2=100
	clear
	echo " ------ "
	echo "| Menu |"
	echo " ------ "
	echo "1- Efetuar uma compra para stock"
	echo "2- Efetuar uma venda para o publico"
	echo ""
	echo "3- Visualizar dados"
	echo "4- Visualizar lucros"
	echo ""
	echo "5- Gestao do ficheiro da base de dados"
	echo ""
	echo "0- Sair do programa"
	echo ""
	echo "Introduza sua opcao> " ; read cnt
	if [ $cnt -eq 1 ]
	then
		while [ $cnt2 -ne 0 ]
		do
		clear
		echo ""
		echo ""
		echo "---------------------------------------MUSICAS DISPONIVEIS---------------------------------------"
		echo ""
		echo ""
		echo "ID: ${musica1[0]}  Nome: ${musica1[1]}  Grupo: ${musica1[2]}  Estilo: ${musica1[3]}  Formato: ${musica1[4]}  Preco: ${musica1[5]}"
		echo "ID: ${musica2[0]}  Nome: ${musica2[1]}  Grupo: ${musica2[2]}  Estilo: ${musica2[3]}  Formato: ${musica2[4]}  Preco: ${musica2[5]}"
		echo "ID: ${musica3[0]}  Nome: ${musica3[1]}  Grupo: ${musica3[2]}  Estilo: ${musica3[3]}  Formato: ${musica3[4]}  Preco: ${musica3[5]}"
		echo "ID: ${musica4[0]}  Nome: ${musica4[1]}  Grupo: ${musica4[2]}  Estilo: ${musica4[3]}  Formato: ${musica4[4]}  Preco: ${musica4[5]}"
		echo "ID: ${musica5[0]}  Nome: ${musica5[1]}  Grupo: ${musica5[2]}  Estilo: ${musica5[3]}  Formato: ${musica5[4]}  Preco: ${musica5[5]}"
		echo "ID: ${musica6[0]}  Nome: ${musica6[1]}  Grupo: ${musica6[2]}  Estilo: ${musica6[3]}  Formato: ${musica6[4]}  Preco: ${musica6[5]}"
		echo "ID: ${musica7[0]}  Nome: ${musica7[1]}  Grupo: ${musica7[2]}  Estilo: ${musica7[3]}  Formato: ${musica7[4]}  Preco: ${musica7[5]}"
		echo "ID: ${musica8[0]}  Nome: ${musica8[1]}  Grupo: ${musica8[2]}  Estilo: ${musica8[3]}  Formato: ${musica8[4]}  Preco: ${musica8[5]}"
		echo "ID: ${musica9[0]}  Nome: ${musica9[1]}  Grupo: ${musica9[2]}  Estilo: ${musica9[3]}  Formato: ${musica9[4]}  Preco: ${musica9[5]}"
		echo "ID: ${musica10[0]}  Nome: ${musica10[1]}  Grupo: ${musica10[2]}  Estilo: ${musica10[3]}  Formato: ${musica10[4]}  Preco: ${musica10[5]}"
		echo ""
		echo "0- Sair para o menu principal"
		echo ""
		echo "Introduza o ID para selecionar compra> " ; read cnt2
			if [ $cnt2 -eq 0 ]
			then
				break
			fi
		echo "Introduza quantidade de compra> " ; read quantidade
			if [ $cnt2 -eq 1001 ]
			then
				echo "${musica1[0]}:${musica1[1]}:${musica1[2]}:${musica1[3]}:${musica1[4]}:${musica1[5]}:$quantidade" >> musica.txt
				let c1=$quantidade
				dc1=$(date)

                                quant=$(grep "1001" musica.txt | cut -d : -f 7)
                                grep -v ^1001 musica.txt > tmp1
                                mv tmp1 musica.txt
       	                        echo "${musica1[0]}:${musica1[1]}:${musica1[2]}:${musica1[3]}:${musica1[4]}:${musica1[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1002 ]
			then
				echo "${musica2[0]}:${musica2[1]}:${musica2[2]}:${musica2[3]}:${musica2[4]}:${musica2[5]}:$quantidade" >> musica.txt
				let c2=$quantidade
				dc2=$(date)

                                quant=$(grep "1002" musica.txt | cut -d : -f 7)
                                grep -v ^1002 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica2[0]}:${musica2[1]}:${musica2[2]}:${musica2[3]}:${musica2[4]}:${musica2[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1003 ]
			then
				echo "${musica3[0]}:${musica3[1]}:${musica3[2]}:${musica3[3]}:${musica3[4]}:${musica3[5]}:$quantidade" >> musica.txt
				let c3=$quantidade
				dc3=$(date)

                               	quant=$(grep "1003" musica.txt | cut -d : -f 7)
                                grep -v ^1003 musica.txt > tmp1
               	                mv tmp1 musica.txt
       	                        echo "${musica3[0]}:${musica3[1]}:${musica3[2]}:${musica3[3]}:${musica3[4]}:${musica3[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                      	        mv temporario musica.txt

			elif [ $cnt2 -eq 1004 ]
			then
				echo "${musica4[0]}:${musica4[1]}:${musica4[2]}:${musica4[3]}:${musica4[4]}:${musica4[5]}:$quantidade" >> musica.txt
				let c4=$quantidade
				dc4=$(date)

                                quant=$(grep "1004" musica.txt | cut -d : -f 7)
                                grep -v ^1004 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica4[0]}:${musica4[1]}:${musica4[2]}:${musica4[3]}:${musica4[4]}:${musica4[5]}:$quantidade" >> musica.txt
	                        sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1005 ]
			then
				echo "${musica5[0]}:${musica5[1]}:${musica5[2]}:${musica5[3]}:${musica5[4]}:${musica5[5]}:$quantidade" >> musica.txt
				let c5=$quantidade
				dc5=$(date)

                                quant=$(grep "1005" musica.txt | cut -d : -f 7)
                                grep -v ^1005 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica5[0]}:${musica5[1]}:${musica5[2]}:${musica5[3]}:${musica5[4]}:${musica5[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1006 ]
                        then
                                echo "${musica6[0]}:${musica6[1]}:${musica6[2]}:${musica6[3]}:${musica6[4]}:${musica6[5]}:$quantidade" >> musica.txt
				let c6=$quantidade
				dc6=$(date)

                                quant=$(grep "1006" musica.txt | cut -d : -f 7)
                                grep -v ^1006 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica6[0]}:${musica6[1]}:${musica6[2]}:${musica6[3]}:${musica6[4]}:${musica6[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1007 ]
                        then
                                echo "${musica7[0]}:${musica7[1]}:${musica7[2]}:${musica7[3]}:${musica7[4]}:${musica7[5]}:$quantidade" >> musica.txt
				let c7=$quantidade
				dc7=$(date)

                                quant=$(grep "1007" musica.txt | cut -d : -f 7)
                                grep -v ^1007 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica7[0]}:${musica7[1]}:${musica7[2]}:${musica7[3]}:${musica7[4]}:${musica7[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1008 ]
                        then
                                echo "${musica8[0]}:${musica8[1]}:${musica8[2]}:${musica8[3]}:${musica8[4]}:${musica8[5]}:$quantidade" >> musica.txt
				let c8=$quantidade
				dc8=$(date)

	                     	quant=$(grep "1008" musica.txt | cut -d : -f 7)
               	        	grep -v ^1008 musica.txt > tmp1
                       		mv tmp1 musica.txt
                       		echo "${musica8[0]}:${musica8[1]}:${musica8[2]}:${musica8[3]}:${musica8[4]}:${musica8[5]}:$quantidade" >> musica.txt
                       		sort -n -k 1 -t : musica.txt >  temporario
               	 		mv temporario musica.txt

			elif [ $cnt2 -eq 1009 ]
                        then
                                echo "${musica9[0]}:${musica9[1]}:${musica9[2]}:${musica9[3]}:${musica9[4]}:${musica9[5]}:$quantidade" >> musica.txt
				let c9=$quantidade
				dc9=$(date)

                                quant=$(grep "1009" musica.txt | cut -d : -f 7)
                                grep -v ^1009 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica9[0]}:${musica9[1]}:${musica9[2]}:${musica9[3]}:${musica9[4]}:${musica9[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			elif [ $cnt2 -eq 1010 ]
                        then
                                echo "${musica10[0]}:${musica10[1]}:${musica10[2]}:${musica10[3]}:${musica10[4]}:${musica10[5]}:$quantidade" >> musica.txt
				let c10=$quantidade
				dc10=$(date)

                                quant=$(grep "1008" musica.txt | cut -d : -f 7)
                                grep -v ^1010 musica.txt > tmp1
                                mv tmp1 musica.txt
                                echo "${musica10[0]}:${musica10[1]}:${musica10[2]}:${musica10[3]}:${musica10[4]}:${musica10[5]}:$quantidade" >> musica.txt
                                sort -n -k 1 -t : musica.txt >  temporario
                                mv temporario musica.txt

			else
				echo "ID invalido"
			fi
			sort -n -k 1 -t : musica.txt >  temporario
			mv temporario musica.txt
			clear
			break
		done
	elif [ $cnt -eq 2 ]
	then
		while [ $cnt2 -ne 0 ]
		do
		clear
		echo ""
		echo ""
		echo "                                        MUSICAS DISPONIVEIS"
		awk -f testando.awk musica.txt
		echo ""
		echo "0- Sair para o menu principal"
		echo ""
		echo "Introduza o ID para selecionar compra> " ; read cnt2
		# adicionar compras
		if [ $cnt2 -eq 0 ]
                then
     	                break
		elif [ $cnt2 -eq 1001 ]
		then
			let m1=m1+1
			d1=$(date)

			#reduzir valor dentro do estoque
			quant=$(grep "1001" musica.txt | cut -d : -f 7)
			let quant=$quant-1
			grep -v ^1001 musica.txt > tmp1
			mv tmp1 musica.txt
			echo "${musica1[0]}:${musica1[1]}:${musica1[2]}:${musica1[3]}:${musica1[4]}:${musica1[5]}:$quant" >> musica.txt
			sort -n -k 1 -t : musica.txt >  temporario
			mv temporario musica.txt

		elif [ $cnt2 -eq 1002 ]
		then
			let m2=m2+1
			d2=$(date)

                        quant=$(grep "1002" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1002 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica2[0]}:${musica2[1]}:${musica2[2]}:${musica2[3]}:${musica2[4]}:${musica2[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1003 ]
		then
			let m3=m3+1
			d3=$(date)

                        quant=$(grep "1003" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1003 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica3[0]}:${musica3[1]}:${musica3[2]}:${musica3[3]}:${musica3[4]}:${musica3[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1004 ]
		then
			let m4=m4+1
			d4=$(date)

                        quant=$(grep "1004" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1004 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica4[0]}:${musica4[1]}:${musica4[2]}:${musica4[3]}:${musica4[4]}:${musica4[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1005 ]
		then
			let m5=m5+1
			d5=$(date)

                        quant=$(grep "1005" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1005 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica5[0]}:${musica5[1]}:${musica5[2]}:${musica5[3]}:${musica5[4]}:${musica5[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1006 ]
		then
			let m6=m6+1
			d6=$(date)

                        quant=$(grep "1006" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1006 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica6[0]}:${musica6[1]}:${musica6[2]}:${musica6[3]}:${musica6[4]}:${musica6[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1007 ]
		then
			let m7=m7+1
			d7=$(date)

                        quant=$(grep "1007" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1007 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica7[0]}:${musica7[1]}:${musica7[2]}:${musica7[3]}:${musica7[4]}:${musica7[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1008 ]
		then
			let m8=m8+1
			d8=$(date)

                        quant=$(grep "1008" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1008 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica8[0]}:${musica8[1]}:${musica8[2]}:${musica8[3]}:${musica8[4]}:${musica8[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1009 ]
		then
			let m9=m9+1
			d9=$(date)

                        quant=$(grep "1009" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1009 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica9[0]}:${musica9[1]}:${musica9[2]}:${musica9[3]}:${musica9[4]}:${musica9[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		elif [ $cnt2 -eq 1010 ]
		then
			let m10=m10+1
			d10=$(date)

                        quant=$(grep "1010" musica.txt | cut -d : -f 7)
                        let quant=$quant-1
                        grep -v ^1010 musica.txt > tmp1
                        mv tmp1 musica.txt
                        echo "${musica10[0]}:${musica10[1]}:${musica10[2]}:${musica10[3]}:${musica10[4]}:${musica10[5]}:$quant" >> musica.txt
                        sort -n -k 1 -t : musica.txt >  temporario
                        mv temporario musica.txt

		else
			echo "ID invalido"
		fi
		clear
		done
	elif [ $cnt -eq 3 ]
	then
		while [ $cnt2 -ne 0 ]
		do
		clear
		echo ""
		echo "                                                                            Vizualizar Dados"
		echo ""
		awk -f vizualizar.awk musica.txt
		echo ""
		echo "ID       QUANTIDADES VENDIDAS         DATA DE VENDA"
		echo ""		#submenu
		echo -n "1001     "$m1 ; echo "                            "$d1
		echo -n "1002     "$m2 ; echo "                            "$d2
		echo -n "1003     "$m3 ; echo "                            "$d3
		echo -n "1004     "$m4 ; echo "                            "$d4
		echo -n "1005     "$m5 ; echo "                            "$d5
		echo -n "1006     "$m6 ; echo "                            "$d6
		echo -n "1007     "$m7 ; echo "                            "$d7
		echo -n "1008     "$m8 ; echo "                            "$d8
		echo -n "1009     "$m9 ; echo "                            "$d9
		echo -n "1010     "$m10 ; echo "                            "$d10
		echo ""
		echo "ID       ENTRADA NO ESTOQUE"
                echo ""
                echo "1001     "$dc1
		echo "1002     "$dc2
		echo "1003     "$dc3
		echo "1004     "$dc4
		echo "1005     "$dc5
		echo "1006     "$dc6
		echo "1007     "$dc7
		echo "1008     "$dc8
		echo "1009     "$dc9
		echo "1010     "$dc10
		echo ""
		echo "0- Sair para o menu principal"
		echo ""
		echo "Introduza sua opcao> " ; read cnt2
		done
	elif [ $cnt -eq 4 ]
	then
		while [ $cnt2 -ne 0 ]
		do
		clear
		echo " ------------------- "
		echo "| Visualizar Lucros |"
		echo " ------------------- "
		echo ""
		echo "${musica1[0]}:$c1:$m1:${musica1[5]}" > lucros.txt
		echo "${musica2[0]}:$c2:$m2:${musica2[5]}" >> lucros.txt
		echo "${musica3[0]}:$c3:$m3:${musica3[5]}" >> lucros.txt
		echo "${musica4[0]}:$c4:$m4:${musica4[5]}" >> lucros.txt
		echo "${musica5[0]}:$c5:$m5:${musica5[5]}" >> lucros.txt
		echo "${musica6[0]}:$c6:$m6:${musica6[5]}" >> lucros.txt
		echo "${musica7[0]}:$c7:$m7:${musica7[5]}" >> lucros.txt
		echo "${musica8[0]}:$c8:$m8:${musica8[5]}" >> lucros.txt
		echo "${musica9[0]}:$c9:$m9:${musica9[5]}" >> lucros.txt
		echo "${musica10[0]}:$c10:$m10:${musica10[5]}" >> lucros.txt
		awk -f lucros.awk lucros.txt
		echo ""
		echo ""
		echo "0- Sair para o menu principal"
		echo ""
		echo "Introduza sua opcao> " ; read cnt2
		done
	elif [ $cnt -eq 5 ]
	then
		while [ $cnt2 -ne 0 ]
		do
		clear
		echo " ------------------------- "
        	echo "| Gestao de Base de Dados |"
       	 	echo " ------------------------- "
	        echo ""
	        echo "1- Backup-> Criar uma copia de segurança"
	        echo "2- Apagar uma copia de segurança"
	        echo ""
		echo "0- Sair para menu principal"
		echo ""
		echo "Introduza sua opcao> " ; read cnt2
		if [ $cnt2 -eq 1 ]
		then
			sort -n -k 1 -t : musica.txt >  temporario
                        cp  musica.txt {musica.txt}.bck
			mv temporario musica.txt
			echo "Backup Concluído!"
		elif [ $cnt2 -eq 2 ]
		then
			if [ -f $filename ];
			then
			rm {musica.txt}.bck
   			echo "Backup Apagado!"
			fi
		else
			echo "Opção Inválida"
		fi
		done
	elif [ $cnt -eq 0 ]
	then
		clear
		echo ""
	else
		clear
		echo "Opção invalida"
	fi
	clear
done

