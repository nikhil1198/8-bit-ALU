`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    18:38:52 10/29/2016 
// Design Name: 
// Module Name:    designfile 
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
module designfile(
   input [33:0] inp,
   output reg [33:0] out,	
	output  O,carry);

wire [1:0] s = inp[33:32];
wire [7:0] A = inp[31:24];
wire [7:0] B = inp[23:16];

wire [7:0] Y;
wire [15:0] Z;
 

ALU_8bit l1(s,A,B,Y,Z,O,carry);


always @ (*)
begin
case(s)

2'b00 :
begin
 out = {s,A,B, 8'b00000000, Y};
end

2'b01 :
begin
 out = {s,A,B, 8'b00000000, Y};
end

2'b10 :
begin
 out = {s,A,B, 8'b00000000, Y};
end

2'b11 :
begin
 out = {s,A,B,Z};
end

endcase
end
endmodule
