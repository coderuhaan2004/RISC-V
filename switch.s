#switch(num):
#case x:
#--
#case y: 
#--
#default:
#--

.data
num: 
    .byte 40
.text
#storing values of x, y & z in registers
addi s2, zero, 10 #x
addi s3, zero, 20 #y
addi s4, zero, 30 #z

lb t0, num #t0 = 10

beq t0, s2, case1
beq t0, s3, case2
beq t0, s4, case3
default:
    lui s8, 0xDEF #CA1 in s5
    jal x8, done

case1:
    lui s5, 0xCA1 #CA1 in s5
    jal x8, done
case2:
    lui s6, 0xCA2 #CA1 in s5
    jal x8, done
case3:
    lui s7, 0xCA3 #CA1 in s5
    jal x8, done
done: 
