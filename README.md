# Reversal-of-A-String-Using-Recursion-In-MIPS
The C code below, for the reversing of a string has been implemented in MIPS assemble language. 
For implementing a recursive fuction in MIPS, we make use of the stack pointer. As you observe the code, jal saves the return address (the address of the next instruction) in the dedicated register $ra, before jumping to the function. — jal is the only MIPS instruction that can access the value of the program counter, so it can store the return address PC+4 in $ra.

// C program to reverse a string using recursion
/* Function to print reverse of the passed string */
void reverse(char *str)
{
if (*str)
{
	reverse(str+1);
	printf("%c", *str);
}
}

/* Driver program to test above function */
int main()
{
char a[] = "Geeks for Geeks";
reverse(a);
return 0;
}
