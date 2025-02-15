.data

.text
main:
    #Store 0xdeadbeef into the memory
    lui s0, 1 #set the upper 5 bytes to 1
    slli s0, s0, 16 #shift by 16 bits = 2 bytes
    #s0 contains the address 0x10000000
    lui s1, 0xdeadb
    lui s2, 0xeef #s2 stores 0x00eef 000
    srli s2, s2, 12 #s2 stores 0x00000 eef
    or s2, s1, s2 #or 0xdeadb000 0x00000eef this concatenates
    #s2 contains 0xdeadbeef
    sw s2, 0(s0) #word saved at 0x10000000
