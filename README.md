# 8-bit-ALU

In this project I have used a 34 bit input in which opcode(in the code denoted by - s) is from 33 to 32, A ( first input ) from 31 to 24, B ( second input ) from 23 to 16 and output ( in the code denoted by Y and Z(for multiplication) ) from 15 to 0. I have 16 bits for output because the ALU contains the multiplication of 8 bit numbers. 
The ALU contains an  8 bit adder using 8 Full Adders, 8 bit AND, 8 bit XOR and 8 bit multiplication by Booth's Algorithm. 
The Test Bench code is run at for each type of select line input for 100ns to get all the 4 kinds of outputs in the timing diagram. 
There is a designfile.v that gives the input to the ALU in fashion stated in the question. The ALU_8bit.v has 4 modules for the corresponding 4 tasks it does, which uses switch case in order to select the task ALU wants to do.
The result is given by the 34 bit number that comes out after running the test bench code with the overflow ( denoted by O ) and carry.

# Timing Diagram:

![alt text](https://github.com/nikhil1198/8-bit-ALU/blob/master/output.JPG)
