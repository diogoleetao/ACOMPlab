#determina os elementos pares da sequência de fibonacci até ao décimo termo


.data

num:    .word 

.text


li x11, 1 #y
li x13, 1 #x
li x16, 1 #i =1
li x15, 0xA #limite = 10
li x27, 2 #comparador de resto
la x10, num #addr(num)


for:

addi x16, x16, 1 #i++

mv x14, x11 #z = y
add x11, x11, x13 #y = y + x
mv x13, x14 #x = z
rem x28, x11, x27 #compara o resto de y
beq x28, x0, par 
bge x16, x15, end    #for i=1; i>=10; i++
bne x28, x0, for

par:

sw x11, 4(x10) #save y value on addr
addi x10, x10, 4 #mover 4 bits no address, q é a dimensão de cada espaço
blt x16, x15, for    #for i=1; i<10; i++

end:

li x17, 1
ecall
