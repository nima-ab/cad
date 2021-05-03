`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:59 04/27/2021 
// Design Name: 
// Module Name:    full_adder_structural 
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
module full_adder_structural(
		input a,
		input b,
		input cin,
		
		output cout,
		output sum
    );
	 
	 
	 wire a1, a2, a3;
	 
	 xor(a1, a, b);
	 xor(sum, a1, cin);
	 
	 and(a2, a1, cin);
	 and(a3, a, b);
	 or(cout, a2, a3);

endmodule
