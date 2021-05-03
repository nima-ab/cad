`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:54 05/03/2021 
// Design Name: 
// Module Name:    ripple_adder_dataflow 
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
module ripple_adder_dataflow(
		input [3:0] a,
		input [3:0] b,
		input cin,
		
		output cout,
		output [3:0] sum
    );
	 
	 
	 wire c1, c2, c3;
	 
	 full_adder_dataflow fa0(a[0], b[0], cin, c1, sum[0]);
	 full_adder_dataflow fa1(a[1], b[1], c1, c2, sum[1]);
	 full_adder_dataflow fa2(a[2], b[2], c2, c3, sum[2]);
	 full_adder_dataflow fa3(a[3], b[3], c3, cout, sum[3]);

endmodule
