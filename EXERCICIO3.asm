	org 00h ;definindo o endereço de origem como 00h

inicio: 
	mov ACC, #10110010b ;movendo o valor binário de forma imediata para ACC
	mov B, #00110101b ;movendo o valor binário de forma imediata para B
	anl A, B ;AND lógico entre ACC e B
	rr A ;rotacionando ACC à direita uma vez
	rr A  ;rotacionando ACC à direita pela segunda vez
	cpl A ;complemento de ACC
	rl A ;rotacionando ACC à esquerda uma vez
	rl A ;rotacionando ACC à esquerda pela segunda vez
	orl A, B ;OR lógico entre ACC e B
	xrl A, B ;XOR entre ACC e B
	swap A ;realizando o SWAP de A
	jmp inicio ;salto incondicional para o label de inicio

	end
