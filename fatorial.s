.data

num:    .word 1, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text

li x12, 0 #i
li x14, 1
li x15, 10 #counter
li x16, 0 
la x10, num #addr(num)

for:

addi x16, x16, 1
addi x12, x12, 1 #i++
sub x13, x12, x14 #i-1
blt x13, x14, continue
fatorial:
mul x12, x12, x13 #i = i*(i-1)
sub x13, x13, x14 #(i-1)-1
blt x14, x13, fatorial

continue:

sw x12, 4(x10) #save y value on addr
addi x10, x10, 4 #mover 4 bits no address, q é a dimensão de cada espaço
or x12, x16, x0
blt x12, x15, for


li x17, 1
ecall
