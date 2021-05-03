`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:01:57 04/27/2021 
// Design Name: 
// Module Name:    full_adder_dataflow 
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
module full_adder_dataflow(
		input a,
		input b,
		input cin,
		
		output cout,
		output sum
    );
	
	assign sum = a ^ b ^ cin;
	assign cout = (a & b) | (a & cin) | (b & cin);


endmodule
