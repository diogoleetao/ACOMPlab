.data

num:    .word

.text


li x11, 1 #y
li x13, 1 #x
li x16, 1 #i = 1
li x15, 0xA #limite = 10
la x10, num #addr(num)

sw x11, 0(x10) #save y value on addr

for:

addi x16, x16, 1 #i++
sw x11, 4(x10) #save y value on addr
mv x14, x11 #z = y
add x11, x11, x13 #y = y + x
mv x13, x14 #x = z
addi x10, x10, 4 #mover 4 bits no address, q é a dimensão de cada espaço
blt x16, x15, for    #for i=1; i<10; i++


li x17, 1
ecall
