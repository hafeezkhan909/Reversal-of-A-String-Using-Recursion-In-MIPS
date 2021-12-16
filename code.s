.data 
message: .asciiz "Example Sentence"
.text
main:

la $s0, message
li $a1, 0
jal reverse
li $v0, 10
syscall
reverse:
addi $sp, $sp,-8
sw $a1, 4($sp)
sw $ra, 0($sp)

add $t0, $s0, $a1
lbu $t1, 0($t0)
beq $t1, $zero, base
addi $a1, $a1, 1
jal reverse

lw $a1, 4($sp)
add $t0, $s0, $a1
lbu $t7, 0($t0)
li $v0, 11
move $a0, $t7
syscall
lw $ra, 0($sp)
addi $sp, $sp, 8
jr $ra


base:

addi $sp, $sp, 8
jr $ra