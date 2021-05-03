`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:03:37 05/03/2021
// Design Name:   ripple_adder_dataflow
// Module Name:   D:/Nima/Uni/Computer Aided Design/Xilinx/Assignment_2/ra_dataflow_tb.v
// Project Name:  Assignment_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_adder_dataflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ra_dataflow_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [3:0] i, j;
	reg k;

	// Outputs
	wire cout;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	ripple_adder_dataflow uut (
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
		        
		// Add stimulus here
		for (i = 0; i < 16; i = i + 1) begin
			for (j = 0; j < 16; j = j + 1) begin
				for (k = 0; k < 2; k = k + 1) begin
					#10
					a = i;
					b = j;
					{cin} = k;
				end
			end
		end
	end
      
endmodule

