`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:17 04/27/2021 
// Design Name: 
// Module Name:    full_adder_behavioral 
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
module full_adder_behavioral(
		input a,
		input b,
		input cin,
		
		output cout,
		output sum
    );
	 
	 assign {cout, sum} = a + b + cin;
	 
	 

endmodule
