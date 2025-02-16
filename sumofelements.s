.data
var1:
    .word 10, -20, 30, 40, 5 #array initialized  
.text
add t0, t0, zero #sum = 0
lui s1, 1
slli s1, s1, 16 #s1 = 0x10000000
add s2, s0, zero #i = 0
addi s3, s3, 5 # # of elements = 5
add s4, s1, s0 #copied base address into s4
loop:
    lw t1, 0(s4) #loaded word from base address
    add t0, t0, t1 # sum += t1
    addi s4, s4, 4 # +4 bytes for next element of array
    addi s2, s2, 1 #increment of i by 1
    beq s2, s3, done # i = # of elements?
    jal x0, loop
done:
    sw t0, 0(s4)
