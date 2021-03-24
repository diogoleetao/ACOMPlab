#calcula a maior potência de 2 menor que o décimo elemento da sequência de fibonacci



.data

num:    .word

.text


li x11, 1 #y
li x13, 1 #x
li x16, 1 #i =1
li x15, 0xA #limite = 10
la x10, num #addr(num)

sw x11, 0(x10) #save y value on addr

for:

addi x16, x16, 1 #i++
sw x11, 4(x10) #save y value on addr
or x14, x0, x11 #z = y
add x11, x11, x13 #y = y + x
or x13, x0, x14 #x = z
addi x10, x10, 4 #mover 4 bits no address, q é a dimensão de cada espaço
blt x16, x15, for    #for i=1; i<10; i++

li x28, 2 #potência de 2

while:

blt x11, x28, end #quando U(10) < 2^k termina o ciclo
slli x28, x28, 1 #multiplicar por 2

j while

end:
srai x28, x28, 2
addi x10, x10, 4
sw x28, 0(x10)

li x17, 1
ecall
