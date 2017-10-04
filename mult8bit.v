`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    18:47:57 10/29/2016 
// Design Name: 
// Module Name:    mult8bit 
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

module mult8bit(
input[7:0] x,y,
output[15:0]p
   );

 reg [2:0] cc[3:0];
 reg [8:0] pp[3:0];
 reg [15:0] spp[3:0];
 reg [15:0] prod;
 wire [8:0] inv_x;
 integer kk,ii;
assign inv_x = {~x[7],~x}+1;
always @ (x or y or inv_x)
begin
 cc[0] = {y[1],y[0],1'b0};
 for(kk=1;kk<4;kk=kk+1)
 cc[kk] = {y[2*kk+1],y[2*kk],y[2*kk-1]};
 for(kk=0;kk<4;kk=kk+1)
 begin
 case(cc[kk])
 3'b001 , 3'b010 : pp[kk] = {x[7],x};
 3'b011 : pp[kk] = {x,1'b0};
 3'b100 : pp[kk] = {inv_x[7:0],1'b0};
 3'b101 , 3'b110 : pp[kk] = inv_x;
 default : pp[kk] = 0;
 endcase
 spp[kk] = $signed(pp[kk]);
 for(ii=0;ii<kk;ii=ii+1)
 spp[kk] = {spp[kk],2'b00}; //multiply by 2 to the power x or shifting operation
 end //for(kk=0;kk<N;kk=kk+1)
 prod = spp[0];

 for(kk=1;kk<4;kk=kk+1)
 prod = prod + spp[kk];
end
assign p = prod;

endmodule 