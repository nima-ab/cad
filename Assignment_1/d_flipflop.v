`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:39 04/25/2021 
// Design Name: 
// Module Name:    d_flipflop 
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
module d_flipflop(
	input d,
	input clk,
	
	output q,
	output q_not
	);
	
	wire Q;
	wire Q_not;
	
	d_latch dl_one(
		.d(d),
		.en(clk),
		.q(Q),
		.q_not(Q_not)
	);
	
	d_latch dl_two(
		.d(Q),
		.en(clk),
		.q(q),
		.q_not(q_not)
	);
	
	
endmodule
