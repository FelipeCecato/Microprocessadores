
org 0000h

main:
	mov A, #03h ;1 us

	mov A, #00h ;1 us

	mov R0, #05h ;1 us

	mov B, #07h ;2 us

	mov 7Ch, P1 ;2 us

	setb RS0 ;1 us
	mov R0, 7Ch ;2 us

	mov 6Fh, R0 ;2 us

	mov R1, #6Fh ;1 us

	mov A, @R1 ;1 us

	mov DPTR, #0FFFFFFFh ;2 us

	NOP ;1 us
	
	end

;(a) O tempo de cada instru��o foi colocado ao lado de cada linha (em microssegundos).
;O tempo total foi de 17 microssegundos

;(b) Como a frequ�ncia de clock do sistema � de 12 MHz, temos que existem 12 ciclos em 
;1 microssegundo. Portanto, programa existem 12 [ciclos] * 17 [us] = 154 microssegundos

;(c) Ao executar o comando, o registrador ACC recebeu o valor FF, que estava guardado na porta 1.
;Quando o comando reset � acionado, os bits da porta 1 s�o todos configurados como 1, indicando que
;eles est�o configurados como 
;input. 

;(d) O acumulador recebeu o valor guardado no endere�o 6F, que � o valor guardado em R1.

;(e) Ao mover o valor para o registrados, percebeu-se uma mudan�a nos registradores DPH e DPL.
;� poss�vel mover um valor de 4 d�gitos para DPTR pois ele � formado por 4 registradores: DP0l, 
;DP0H, DP1L, DP1H. O valor m�ximo em hexadecimal que se pode guardar em DPTR �  FFFFFFF.


	
