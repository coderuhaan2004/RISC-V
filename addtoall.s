#Add a num to all the elements of the array
.data
array:
    .byte -40 -30 -20 -10 0 10 20 30 40 50 #array initialized
num: 
    .byte 100 # num to add
#array label is address to the first element of array    

.text
    add s1, s1, zero #s1 = sum = 0
    add s2, s2, zero #s2 = i = 0
    addi s3, s3, 10 # s3 = # of elements = 10
    #saving base address of array
    lui s4, 1
    slli s4, s4, 16 #s4 = 0x10000000
    add s6, s4, zero
    lb s5, num #s5 = num
loop:
    lb t0, 0(s6)
    add t0, t0, s5 #t0 = t0 + s5
    sb t0, 0(s6)
    addi s6, s6, 1 #increment base address by 1 for next element
    addi s2, s2, 1 #increment i by 1
    beq s2, s3, done
    jal x0, loop
done:
