


posicao = 0
contJogadasdisponiveis = 9

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
	return( "\nPosições Disponíveis:\n"..
			"\n"..jogadasDisponiveis[1][1] .. "|"..jogadasDisponiveis[1][2]..	"|" ..jogadasDisponiveis[1][3]..
			"\n".."------" ..
			"\n"..jogadasDisponiveis[2][1] .. "|"..jogadasDisponiveis[2][2]..	"|" ..jogadasDisponiveis[2][3]..
			"\n".."------" ..
			"\n"..jogadasDisponiveis[3][1] .. "|"..jogadasDisponiveis[3][2]..	"|" ..jogadasDisponiveis[3][3])
end



function verificarJogadaValida(n)
	if (contJogadasdisponiveis >0) then
		if((n >= 1) and (n <= 9))then
			contJogadasdisponiveis = contJogadasdisponiveis -1
			print (contJogadasdisponiveis .. " Jogadas DISPONIVEIS")
			return true
		else
			return false
		end
	else
		return ("Jogo Empatado!!!!!")
	end
end


function jogarJogo()
	if(contJogadasdisponiveis%2 ==0) then
		print (exibirJogo())
		print ("\nVoce joga com 'O', escolha a posição: \n -----------------------------------")
		print (mostrarJogadasDisponiveis())
		posicao = io.read ("*number")

	else
		print (exibirJogo())
		print ("\nVoce joga com 'X', escolha a posição: \n -----------------------------------")
		print (mostrarJogadasDisponiveis())
		posicao = io.read ("*number")
	end
end

function escolherCaractere()

print("escolha caractere X ou O")
caractere = io.read("")

end




print (jogarJogo())
























