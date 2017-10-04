`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Group: 33 
// Engineers : Nikhil - 15116036 , Samarth Naik - 15116047
// 
// Create Date:    10:48:48 10/29/2016 
// Design Name: 
// Module Name:    addition 
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
module fulladd(
  input a,b,cin,
  output cout,sum  );
  
  assign sum = a^b^cin ;
  assign cout = (a&b)|(cin&(a^b)) ;

endmodule
