`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:12 04/25/2021 
// Design Name: 
// Module Name:    sr_latch 
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
module sr_latch(
	input r,
	input s,
	input en,
	
	output reg q,
	output reg q_not
	);
	 
	always @(r, s) begin
		if (en) begin
			if (!r && !s) begin
				q <= q;
				q_not <= q_not;
			end
			
			else if (r && !s) begin
				q <= 1;
				q_not <= 0;
			end
			
			else if (!r && s) begin
				q <= 0;
				q_not <= 1;
			end
		end
	end

endmodule
