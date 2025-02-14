#How byte and word are stored in the memory?
.data
var1: #label as var1
    .byte 10 #allocates just 1 byte for 10 = 0x0A in memory
var2: #label as var2
    .word 0xabcdcb #allocates next 3 bytes in memory
.text
main:  
    lw s1, var1 #loaded the whole word from the base address of var1 = 0xABCDCB0A
    lw s2, var2 #loaded the whole word from the base address of var2 = 0x00ABCDCB
    add s3, s2, s1 #add var1 and var2
