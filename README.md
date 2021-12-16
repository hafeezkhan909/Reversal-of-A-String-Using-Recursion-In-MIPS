# Reversal-of-A-String-Using-Recursion-In-MIPS
The C code for the reversing of a string has been implemented in MIPS assemble language. 
For implementing a recursive fuction in MIPS, we make use of the stack pointer. As you observe the code, jal saves the return address (the address of the next instruction) in the dedicated register $ra, before jumping to the function. — jal is the only MIPS instruction that can access the value of the program counter, so it can store the return address PC+4 in $ra.

The MIPS code is run on [QTSpim environment](https://sourceforge.net/projects/spimsimulator/files/). It is software that will help you to simulate the execution of MIPS assembly programs. It does a context and syntax check while loading an assembly program. Also, it adds in necessary overhead instructions as needed, and updates register and memory content as each instruction is executed.

Initially the code is written in a file (example: NOTEPAD), and is saved with a .s extension. Then the code is run on the environment by reinitializing and loading the file.

The MIPS instruction set has been attached as well, for attaining the knowledge of assembler directives, system calls, and the instructions that have been implemented in this code.
