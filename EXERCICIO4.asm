	org 00h ;setando origem do programa no endereço ooh
	jmp main ;saltando para o label do programa principal
	org 33h ;recolocando a origem do programa no endereço 33h

main:
	clr A ;seta todos os bits do registrador ACC com zeros 
	mov PSW, #00h ;selecionando o banco 00
	mov R0, #3fh ;movendo de forma imediata um valor qualquer para R0

block1:
	jz block2 ;salta para o label "block2" se o acumulador == 0
	jnz block3 ;salta para o label "block3" se o acumulador != 0
	nop ;1 nop = 12 ciclos de máquina = 1 uS

block2: 
	mov ACC, R0	;movendo o conteúdo de R0 para ACC
	jmp block1 ;retorna para o label do primeiro bloco

block3:
	djnz R0, block3 ;se R0 != 0 pular para block3
	jmp main  ;retorna para o label do programa principal

	end

;descrição do comportamento do código:
;
;main: limpa o ACC e move um valor arbitrário para R0
;block1: redireciona o fluxo do código entre o bloco 2 ou 3
;block2: move o valor de R0 para ACC e retorna para o bloco 1
;block3: realiza um loop onde R0 é decrementado até zero e depois retorna ao bloco principal
