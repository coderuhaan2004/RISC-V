.data 
n: .word 10

.text
#Fibonacci number
main:
lui s0, 0x10000
lw a0, 0(s0) #load n
addi s1, zero, 1 # for storing 1
addi s2, zero, 2 # for storing 1
jal ra, fibo
jal ra, exit
fibo:
    beq a0, s1, return1 # base case
    bge a0, s2, greater # if a0 >= 2
    
greater:
    addi sp, sp, -16 # 0. n 1. n-1 2. n-2 3. ra
    addi a1, a0, -1 # n-1
    addi a2, a0, -2 # n-2
    
    sw a0, 4(sp) # n stored
    sw ra, 16(sp) # ra stored
    
    addi a0, a0, -1 # decrement of a0
    jal ra, fibo
    
    add t1, a2, a1 
    add a2, zero, a1 # a1 = a2
    add a1, zero, t1 # a2 = a1 + a2
    
    lw ra, 16(sp)
    addi sp, sp, 16 #stack used
    jalr ra, ra, 0
    
    
return1:
    addi a2, zero, 0
    jalr ra, ra, 0 #return 1    
    
exit:
