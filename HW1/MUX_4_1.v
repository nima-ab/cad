`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:52 04/20/2021 
// Design Name: 
// Module Name:    MUX_4_1 
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
module MUX_4_1(
	input [31:0] a,
	input [31:0] b,
	input [31:0] c,
	input [31:0] d,
	input [1:0] s,
	output [31:0] y	
);

assign y = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);

endmodule
