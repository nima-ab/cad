`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:58 04/27/2021 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
		input [3:0] a,
		input [3:0] b,
		input [3:0] cin,
		
		output cout,
		output [3:0] sum
    );
	 
	 assign {cout, sum} = a + b + cin;


endmodule
