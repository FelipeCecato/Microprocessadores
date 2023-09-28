# Microprocessadores
Exercícios da disciplina de microprocessadores 

## Exercício 1
```
;Origem
org 0000h

;Inicia label da função principal
main:
	;Move o valor 3 para o registrador acumulador
	mov A, #03h ;1 us

	;Move o valor 0 para o registrador acumulador
	mov A, #00h ;1 us

	;Move o valor 5 para o registrador R0
	mov R0, #05h ;1 us

	;Move o valor 7 para o registrador B
	mov B, #07h ;2 us

	;Move o valor da porta P1 para o endereço 7C
	mov 7Ch, P1 ;2 us

	;Coloca o bit RS0 em 1, selecionando outro banco de registradores, e move o valor em 7C para o R0 
	setb RS0 ;1 us
	mov R0, 7Ch ;2 us

	;move o valor em R0 para o endereço 6F
	mov 6Fh, R0 ;2 us

	;Move o valor em 6F para o registrador R1
	mov R1, #6Fh ;1 us

	;Move o valor guardado no endereço correspondente ao valor guardado em R1 para o registrador acumulador
	mov A, @R1 ;1 us

	;Move o valor 9A5B para o registrador DPTR
	mov DPTR, #9A5Bh ;2 us

	;Espera 1us
	NOP ;1 us

	;Fim do código
	end
```
 * (a) O tempo de cada instrução foi colocado ao lado de cada linha (em microssegundos).
O tempo total foi de 17 microssegundos

 * (b) Como a frequência de clock do sistema é de 12 MHz, temos que existem 12 ciclos em 
1 microssegundo. Portanto, programa existem 12 [ciclos] * 17 [us] = 154 microssegundos

* (c) Ao executar o comando, o registrador ACC recebeu o valor FF, que estava guardado na porta 1.
Quando o comando reset é acionado, os bits da porta 1 sâo todos configurados como 1, indicando que
eles estâo configurados como 
input. 

* (d) O acumulador recebeu o valor guardado no endereço 6F, que é o valor guardado em R1.

* (e) Ao mover o valor para o registrados, percebeu-se uma mudança nos registradores DPH e DPL.
É possível mover um valor de 4 dígitos para DPTR pois ele é formado por 4 registradores: DP0l, 
DP0H, DP1L, DP1H. O valor máximo em hexadecimal que se pode guardar em DPTR é  FFFFFFF.

=======

##Exercicio 2

org 00h

inicio:
	mov ACC,#2 ;insere o valor dois ao acc
	mov B,#3   ;insere o valor 3 no b
	mov R0,#7  ;r0 recebe o valor 7
	add a,r0   ;soma a e r0
	dec a 	   ;decrementar a
	dec a	   ;decrementar a
 	dec a 	   ;decrementar a
	inc b	   ;incrementar b
	subb a,b   ;subtrai a por b
	mul ab     ;realiza a multiplicacao ab
	inc b	   ;incrementar b
	inc b	   ;incrementar b
	div ab     ;divide a por b
	mov R1,a   ;r1 recebe o valor de a
	mov R2,b   ;r2 recebe o valor de b
	jmp inicio ;volta ao inicio

;1) O ultimo bit do PSW eh o bit de paridade;
;Quando ACC recebe 4, o ultimo bit recebe 1,
;pois o valor eh par.Quando ACC recebe 3, o
;valor do ultimo bit eh 0, pois o valor eh 
;impar.

