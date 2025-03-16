.data
n: .byte 5

.text
main:
    lui s0, 0x10000
    lw a0, 0(s0) #stored n
    addi s2, zero, 2
    jal ra, fact
    jal ra, exit  
fact:
    bge a0, s2, greater #if n >= 2
    jalr ra, ra, 0 # if n < 0 goto ra --> 1

greater:
    addi sp, sp, -8
    sw a0, 4(sp) #stored n in memory
    sw ra, 8(sp) #stored return address of line 9 or n + 1
    addi a0, a0, -1 # n --> n-1
    jal ra, fact
        add t1, zero, a0 #copy of n
        lw a0, 4(sp)
        lw ra, 8(sp)
        #stack used
        addi sp, sp, 8
        mul a0, a0, t1 # a0 * product
        jalr ra, ra, 0
exit:

    # stack
    # n
    # ra = 0
    # -----
    # n-1
    # ra of n 
    # -----
#     n-2
#     ra of n-1
#     -----
#     n-3
#     ra of n-2
#     ...
#     -----
#     1
#     ra of 2
#     -----
#     return to ra
#     ra of 1
    
   
    
    
    
    
    
    
    
    
    
