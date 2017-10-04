`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    01:17:58 11/02/2016 
// Design Name: 
// Module Name:    ALU_8bit 
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
module ALU_8bit(
    input [1:0] s,
    input [7:0] A,B,
  output reg [7:0] Y,
  output reg [15:0] Z,
  output reg O,carry );


wire cin = 1'b0;
wire [7:0] Y1;
wire [7:0] Y2;
wire [7:0] Y3;
wire [15:0] Z1;
wire o1,c1; 
adder8bit al1(A,B,cin,Y1,c1,o1);
and8bit al2(A,B,Y2);
xor8bit al3(A,B,Y3);
mult8bit al4(A,B,Z1);

always @ (*)
begin
carry = c1;
O = o1; 

case(s) 
2'b00 : 
begin
Y = Y1;
Z = 16'b0000000000000000;
end

2'b01 :
begin
Y = Y2;
Z = 16'b0000000000000000;

end

2'b10 :
begin 
Y = Y3;
Z = 16'b0000000000000000;
end

2'b11 : 
begin 
Z = Z1;
Y = 8'b00000000;
end

endcase
end
 
endmodule



