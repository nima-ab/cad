`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:26:53 05/01/2021
// Design Name:   Q3
// Module Name:   D:/iust/cad/projects/Lab2/Q3TestBench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q3TestBench;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire co;
	wire [15:0] s;

	// Instantiate the Unit Under Test (UUT)
	CLA_adder_16bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.co(co), 
		.s(s)
	);
	integer i,j;
	initial begin
		// Initialize Inputs
		cin = 0;
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
      end
		
		cin = 1;
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
      end


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

