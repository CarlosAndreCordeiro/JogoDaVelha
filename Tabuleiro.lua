jogador1=""
jogador2=""
placar1=0
placar2=0
posicao = 0
contJogadasdisponiveis = 9
jogador = ""


tabuleiro = {{" "," "," "},
			 {" "," "," "},
			 {" "," "," "}}


jogadasDisponiveis = {{"1","2","3"},
					  {"4","5","6"},
					  {"7","8","9"}}





function exibirJogo()



		print( "\n	JOGO ATUAL:\n"..
				" \n"..tabuleiro[1][1] .. "|"..tabuleiro[1][2]..	"|" ..tabuleiro[1][3]..
				" \n".."------" ..
				" \n"..tabuleiro[2][1] .. "|"..tabuleiro[2][2]..	"|" ..tabuleiro[2][3]..
				" \n".."------" ..
				" \n"..tabuleiro[3][1] .. "|"..tabuleiro[3][2]..	"|" ..tabuleiro[3][3].. "\n\n")


end


function mostrarJogadasDisponiveis()


		print(
				"\nPosições Restantes: 0"..contJogadasdisponiveis .. "\n" ..
				"\n"..jogadasDisponiveis[1][1] .. "|"..jogadasDisponiveis[1][2]..	"|" ..jogadasDisponiveis[1][3]..
				"\n".."------" ..
				"\n"..jogadasDisponiveis[2][1] .. "|"..jogadasDisponiveis[2][2]..	"|" ..jogadasDisponiveis[2][3]..
				"\n".."------" ..
				"\n"..jogadasDisponiveis[3][1] .. "|"..jogadasDisponiveis[3][2]..	"|" ..jogadasDisponiveis[3][3])

end





function escolherElemento()
	n=0

		print ("Digite Seu nome do Jogador 1")
		jogador1 = io.read()
		print ("Digite Seu nome do Jogador 2")
		jogador2 = io.read()

		print ("Escolha o Elemento para o jogador ".. jogador1)

	while (n < 1 or n >2) do

		print ("\nEscolha 1 para 'X'\nEscolha 2 para 'O'")


		n=io.read("*number")
			io.read()

		if(type(n)=="number") then


			if( n == 1)then

				jogador = "X"
				iniciarJogo()


			elseif (n == 2) then

				jogador="O"
				iniciarJogo()


			end
		else
			print("In´valido")
		 end
	n=0



	end
end





function iniciarJogo()

	print(exibirJogo())
	print(mostrarJogadasDisponiveis())
	posicao=0

	while(posicao <= 1 or posicao >=9)do

		print ("Você joga com '".. jogador .. "' escolha uma posição no tabuleiro:")

		posicao = io.read("*number")
		io.read()

		if(type(posicao)=="number") then


			if (posicao >= 1 and posicao <= 9) then
				alterarPainel(posicao)

			else
				print ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n=========================\nESCOLHA UMA OPÇÃO VÁLIDA!\n=========================\n\n\n\n")
				print (iniciarJogo())
			end
		else
			print("inválido")
		end
	posicao=0

	end
end

function alterarPainel(posicao)



		if(posicao == 1 and tabuleiro[1][1] == " ") then
			tabuleiro[1][1] = jogador
			jogadasDisponiveis[1][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end

		elseif (posicao==2 and tabuleiro[1][2]== " " ) then
			tabuleiro[1][2]= jogador
			jogadasDisponiveis[1][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end

		elseif (posicao==3 and tabuleiro[1][3]==" " ) then
			tabuleiro[1][3]= jogador
			jogadasDisponiveis[1][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==4 and tabuleiro[2][1]==" "  ) then
			tabuleiro[2][1]= jogador
			jogadasDisponiveis[2][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==5 and tabuleiro[2][2]==" " ) then
			tabuleiro[2][2]= jogador
			jogadasDisponiveis[2][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()

				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==6 and tabuleiro[2][3]==" " ) then
			tabuleiro[2][3]= jogador
			jogadasDisponiveis[2][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()

				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==7 and tabuleiro[3][1]==" " ) then
			tabuleiro[3][1]= jogador
			jogadasDisponiveis[3][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==8 and tabuleiro[3][2]==" "  ) then
			tabuleiro[3][2]= jogador
			jogadasDisponiveis[3][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==9 and tabuleiro[3][3]==" "  ) then
			tabuleiro[3][3]= jogador
			jogadasDisponiveis[3][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1
			if( verificarVitoria() == true) then
				print ("\n\n\n\n\n\n\n\n\n\n===========\nO campeao é ".. jogador.. "\n==============\n\n\n\n\n\n\n\n\n\n\n\n\n")
				exibirJogo()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		else

		print ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n=========================\nESCOLHA UMA OPÇÃO VÁLIDA!\n=========================\n\n\n\n")
		iniciarJogo()

		end
end



function mudarJogador()
	if(jogador=="X") then
		jogador="O"
	else
		jogador="X"
	end
end



function verificarVitoria()


		if(contJogadasdisponiveis >= 1)then

			if(tabuleiro[1][1] ~= " " and tabuleiro[1][1]==tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[1][3]) then
				return true

			elseif(tabuleiro[2][1] ~= " " and tabuleiro[2][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[2][3]) then
				return true

			elseif(tabuleiro[3][1] ~= " " and tabuleiro[3][1] == tabuleiro[3][2] and tabuleiro[3][2] == tabuleiro[3][3]) then

				return true


			elseif(tabuleiro[1][1] ~= " " and tabuleiro[1][1] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[3][1]) then
				return true

			elseif( tabuleiro[1][2] ~= " " and tabuleiro[1][2] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][2]) then
				return true

			elseif(tabuleiro[1][3] ~= " " and  tabuleiro[1][3] == tabuleiro[2][3] and tabuleiro[2][3] == tabuleiro[3][3]) then
				return true

			elseif(tabuleiro[1][1] ~= " " and tabuleiro[1][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][3]) then
				return true

			elseif(tabuleiro[3][1] ~= " " and tabuleiro[3][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[1][3]) then
				return true
			end

		else
			print ("Jogo empatado")
			reiniciarJogo()

		end

end

function reiniciarJogo()

	print("Deseja reiniciar o Jogo: \n1)Sim \n2)Não")
	verifica=io.read("*number")

	if(verifica==1) then
		posicao = 0
		contJogadasdisponiveis = 9



		tabuleiro = {	{" "," "," "},
						{" "," "," "},
						{" "," "," "}}

		jogadasDisponiveis = {	{"1","2","3"},
								{"4","5","6"},
								{"7","8","9"}}

		iniciarJogo()

	else

		print("FIM...")
end


end


function placar()

	placar = placar + 1

end






print(escolherElemento())







