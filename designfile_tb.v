`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Group: 33
// 
//
// Create Date:   02:36:01 11/02/2016
// Design Name:   designfile
// Module Name:   F:/xilinxprog/analog/prob1/designfile_tb.v
// Project Name:  prob1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: designfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module designfile_tb;

	// Inputs
	reg [33:0] inp;

	// Outputs
	wire [33:0] out;
	wire O;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	designfile uut (
		.inp(inp), 
		.out(out), 
		.O(O), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		inp = 34'b0000000000111111110000000000000000;

		// Wait 100 ns for global reset to finish
		#100 inp = 34'b0100000000111111110000000000000000;
		
		#100 inp = 34'b1000000000111111110000000000000000;
		
		#100 inp = 34'b1100000000111111110000000000000000;
        
		// Add stimulus here

	end
      
endmodule

