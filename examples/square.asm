# input value is in $0
# returns the square of the input in $0

# check for negative number
andi $1 $0 0x80
clr $2

# if this passes, input is positive
beq $1 $2 square

# otherwise negate it
inv $0 $0
addi $0 $0 0x01

# do the square calculation
square:
    clr $1
loop_top:
    add $2 $2 $0
    addi $1 $1 0x01
    bne $1 $0 loop_top

# move output to $0
clr $0
add $0 $0 $2

