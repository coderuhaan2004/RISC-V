# Simple if-else in C
# if(i == j)
# f = g + h;
# else
# f = g- h;

#The values of variables can be changed from .data, variables are independent from the registers.
.data #declare variables
i:
    .byte 10
je:
    .byte 10
g:
    .byte 20
h:
    .byte 30  

.text
main:
    lb s1, i #load byte from var i
    lb s2, je #load byte from var j
    lb t1, g
    lb t2, h
    beq s1,s2, if
    jal x1, else
if: 
    add s3, t1, t2
    j done
else:
    sub s3, t1, t2
    j done
done:
