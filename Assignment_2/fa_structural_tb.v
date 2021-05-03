`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:17:31 04/27/2021
// Design Name:   full_adder_structural
// Module Name:   D:/Nima/Uni/Computer Aided Design/Xilinx/Assignment_2/fa_structural_tb.v
// Project Name:  Assignment_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_structural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_structural_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire cout;
	wire sum;

	// Instantiate the Unit Under Test (UUT)
	full_adder_structural uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		// Initialize Inputs
		a = 0;
		b = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		// Initialize Inputs
		a = 0;
		b = 1;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		// Initialize Inputs
		a = 1;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		
		a = 1;
		b = 0;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		a = 1;
		b = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 1;
		b = 1;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

