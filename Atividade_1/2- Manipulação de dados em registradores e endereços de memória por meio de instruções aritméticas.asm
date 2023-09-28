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
