`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    15:44:12 10/29/2016 
// Design Name: 
// Module Name:    adder8bit 
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
module adder8bit(
  input [7:0] A,B,
  input Cin,
  output [7:0] S,
  output  Cout,o  
  );
 
wire c1,c2,c3,c4,c5,c6,c7;

fulladd FA1(A[0],B[0],Cin,c1,S[0]);
fulladd FA2(A[1],B[1],c1,c2,S[1]);
fulladd FA3(A[2],B[2],c2,c3,S[2]);
fulladd FA4(A[3],B[3],c3,c4,S[3]);
fulladd FA5(A[4],B[4],c4,c5,S[4]);
fulladd FA6(A[5],B[5],c5,c6,S[5]);
fulladd FA7(A[6],B[6],c6,c7,S[6]);
fulladd FA8(A[7],B[7],c7,Cout,S[7]); 


assign o = 1'b0;

endmodule
