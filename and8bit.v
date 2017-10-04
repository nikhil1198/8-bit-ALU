`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    17:03:44 10/29/2016 
// Design Name: 
// Module Name:    and8bit 
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
module and8bit(
   input [7:0] A,B, 
	output [7:0] r
	 );
	
assign r[0] = A[0]&B[0];   
assign r[1] = A[1]&B[1];   
assign r[2] = A[2]&B[2];   
assign r[3] = A[3]&B[3];   
assign r[4] = A[4]&B[4];
assign r[5] = A[5]&B[5];   
assign r[6] = A[6]&B[6];
assign r[7] = A[7]&B[7];



endmodule
