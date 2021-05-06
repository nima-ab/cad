`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:51:00 05/07/2021
// Design Name:   multiplier_4bit
// Module Name:   D:/Educational Files/Digital Systems/cad-master/Assignment_2/Q4_Q5/multiplier_4bit_testbench.v
// Project Name:  Q4_Q5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_4bit_testbench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] r;

	// Instantiate the Unit Under Test (UUT)
	multiplier_4bit uut (
		.a(a), 
		.b(b), 
		.r(r)
	);

	integer i, j;
	initial begin
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#3;
			end
		end
	end
      
endmodule

