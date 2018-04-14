
posicao = 0
contJogadasdisponiveis = 9
jogador = ""

tabuleiro = {	{" "," "," "},
				{" "," "," "},
				{" "," "," "}}

jogadasDisponiveis = {	{"1","2","3"},
						{"4","5","6"},
						{"7","8","9"}}


function exibirJogo()
	return( "\n	JOGO ATUAL:\n"..
			"\n"..tabuleiro[1][1] .. "|"..tabuleiro[1][2]..	"|" ..tabuleiro[1][3]..
			"\n".."------" ..
			"\n"..tabuleiro[2][1] .. "|"..tabuleiro[2][2]..	"|" ..tabuleiro[2][3]..
			"\n".."------" ..
			"\n"..tabuleiro[3][1] .. "|"..tabuleiro[3][2]..	"|" ..tabuleiro[3][3].. "\n\n")
end


function mostrarJogadasDisponiveis()
	return(
			"\nPosições Disponíveis: 0"..contJogadasdisponiveis .. "\n" ..
			"\n"..jogadasDisponiveis[1][1] .. "|"..jogadasDisponiveis[1][2]..	"|" ..jogadasDisponiveis[1][3]..
			"\n".."------" ..
			"\n"..jogadasDisponiveis[2][1] .. "|"..jogadasDisponiveis[2][2]..	"|" ..jogadasDisponiveis[2][3]..
			"\n".."------" ..
			"\n"..jogadasDisponiveis[3][1] .. "|"..jogadasDisponiveis[3][2]..	"|" ..jogadasDisponiveis[3][3])
end




-- falta ver a verificaçao de vitoria--
function verificarVitoria()


	if(	tabuleiro[1][2] == tabuleiro[2][2] and
		tabuleiro[3][2] == tabuleiro[1][2] and
		tabuleiro[1][2] ~= " ")then
		return true
	end

	if(	tabuleiro[1][1] == tabuleiro[2][1] and
		tabuleiro[3][1] == tabuleiro[1][1] and
		tabuleiro[1][1] ~= " ")then
		return true
	end



	if(	tabuleiro[1][2] == tabuleiro[2][2] and
		tabuleiro[3][2] == tabuleiro[1][2] and
		tabuleiro[1][2] ~= " ")then
		return true
	end



	if(	tabuleiro[1][3] == tabuleiro[2][3] and
		tabuleiro[3][3] == tabuleiro[1][3] and
		tabuleiro[1][3] ~= " ")then
		return true
	end


	if(	tabuleiro[2][1] == tabuleiro[2][2] and
		tabuleiro[2][3] == tabuleiro[2][1] and
		tabuleiro[2][1] ~= " ")then
		return true
	end



	if(	tabuleiro[3][1] == tabuleiro[3][2] and
		tabuleiro[3][3] == tabuleiro[3][1] and
		tabuleiro[3][1] ~= " ")then
		return true
	end



	if(	tabuleiro[1][1] == tabuleiro[2][2] and
		tabuleiro[3][3] == tabuleiro[1][1] and
		tabuleiro[1][1] ~= " ")then
		return true
	end



	if(	tabuleiro[3][1] == tabuleiro[2][2] and
		tabuleiro[1][3] == tabuleiro[3][1] and
		tabuleiro[3][1] ~= " ")then
		return true
	end
end

-- falta ver a verificaçao de vitoria




function alterarPainel(posicao)

	if(posicao == 1) then
	tabuleiro[1][1] = jogador
	jogadasDisponiveis[1][1] = " "

	print (jogarJogo())

	elseif (posicao==2 ) then
	tabuleiro[1][2]= jogador
	jogadasDisponiveis[1][2] = " "

	print (jogarJogo())

	elseif (posicao==3 ) then
	tabuleiro[1][3]= jogador
	jogadasDisponiveis[1][3] = " "
	print (jogarJogo())

	elseif (posicao==4 ) then
	tabuleiro[2][1]= jogador
	jogadasDisponiveis[2][1] = " "
	print (jogarJogo())

	elseif (posicao==5 ) then
	tabuleiro[2][2]= jogador
	jogadasDisponiveis[2][2] = " "
	print (jogarJogo())

	elseif (posicao==6 ) then
	tabuleiro[2][3]= jogador
	jogadasDisponiveis[2][3] = " "
	print (jogarJogo())

	elseif (posicao==7 ) then
	tabuleiro[3][1]= jogador
	jogadasDisponiveis[3][1] = " "
	print (jogarJogo())

	elseif (posicao==8 ) then
	tabuleiro[3][2]= jogador
	jogadasDisponiveis[3][2] = " "
	print (jogarJogo())

	elseif (posicao==9 ) then
	tabuleiro[3][3]= jogador
	jogadasDisponiveis[3][3] = " "
	print (jogarJogo())

	end
end








function verificarJogadaValida(n)


	if (contJogadasdisponiveis >0) then

		if((n >= 1) and (n <= 9))then
			contJogadasdisponiveis = contJogadasdisponiveis -1
			return true
		else
		print ("ESCOLHA UMA OPÇÃO VÁLIDA!!")
			return jogarJogo()
		end

	elseif(contaJogadasdisponiveis == 0) then
		return ("JOGO EMPATADO!!!!!")
	end
end



function jogarJogo()

	if(contJogadasdisponiveis%2 == 0) then
		print (exibirJogo())
		print ("\nVoce joga com 'O', escolha a posição: \n -----------------------------------")
		print (mostrarJogadasDisponiveis())
		posicao = io.read ("*number")
		jogador = "O"

		if(verificarJogadaValida(posicao)== true) then
			print (alterarPainel(posicao))

		else
			print (verificarJogadaValida(posicao))
		end
	else
		print (exibirJogo())
		print ("\nVoce joga com 'X', escolha a posição: \n -----------------------------------")
		print (mostrarJogadasDisponiveis())
		posicao = io.read ("*number")
		jogador = "X"

		if(verificarJogadaValida(posicao)== true)then
			print (alterarPainel(posicao))

		else
			print (verificarJogadaValida(posicao))
		end
	end
end







print (jogarJogo())

















