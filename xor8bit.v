`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    17:09:09 10/29/2016 
// Design Name: 
// Module Name:    xor8bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module xor8bit(
   input [7:0] A,B, 
   output [7:0] x 
   );
/*	
assign	O = 1'b0;
assign Cout = 1'b0;
	*/
assign x[0] = A[0]^B[0];   
assign x[1] = A[1]^B[1];   
assign x[2] = A[2]^B[2];   
assign x[3] = A[3]^B[3];   
assign x[4] = A[4]^B[4];
assign x[5] = A[5]^B[5];   
assign x[6] = A[6]^B[6];
assign x[7] = A[7]^B[7];	

endmodule
