`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:21 05/01/2021
// Design Name:   Q2
// Module Name:   D:/iust/cad/projects/Lab2/Q2TestBench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q2TestBench;
	reg [3:0] a;
	reg [3:0] b;
	reg ci;
	reg sub;
	wire [3:0] s;
	wire co;
	// Instantiate the Unit Under Test (UUT)
	adder_subtractor uut (
	.a(a),
	.b(b),
	.ci(ci),
	.sub(sub),
	.s(s),
	.co(co)
	);
	integer i,j;
	initial begin
		// Initialize Inputs
		
		ci = 1'b0;
		sub = 1'b0; // add
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
      end
		
		ci = 1'b0;
		sub = 1'b1; // subtract
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

