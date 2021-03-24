#i!+3^i



.data

num:    .word 2, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text

li x11, 3
li x12, 0 #i multiplicado
li x14, 1 #1 fixo
li x15, 10 #max 10
li x16, 0 #i
li x28, 3 #3 fixo
la x10, num #addr(num)

for:

addi x16, x16, 1
addi x12, x12, 1 #i++
sub x13, x12, x14 #i-1
blt x13, x14, continue

fatorial:
mul x11, x11, x28
mul x12, x12, x13 #i = i*(i-1)
sub x13, x13, x14 #(i-1)-1
bge x13, x14, fatorial

continue:
add x12, x11, x12
sw x12, 4(x10) #save y value on addr
addi x10, x10, 4 #mover 4 bits no address, q é a dimensão de cada espaço
or x12, x16, x0
or x11, x28, x0
blt x16, x15, for


li x17, 1
ecall
