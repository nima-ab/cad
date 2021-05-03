`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:22 04/25/2021 
// Design Name: 
// Module Name:    d_latch 
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
module d_latch(
	input d,
	input en,
	
	output q,
	output q_not
   );

	sr_latch sr (
		.r(d),
		.s(!d),
		.en(en),
		.q(q),
		.q_not(q_not)
	);
	
endmodule
