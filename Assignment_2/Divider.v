`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:30:08 05/07/2021 
// Design Name: 
// Module Name:    Divider 
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
module Divider_4bit(
		input [3:0] a,
		input [3:0] b,
		input start,
		input clk,
		
		output reg ready,
		output reg busy,
		output reg [3:0] count,
		output [3:0] q,
		output [2:0] r
    );
	 
	 reg [3:0] b_reg;
	 reg [3:0] a_reg;
	 
	 assign q = count;
	 assign r = a_reg;
	 
	 always @ (posedge clk) begin
		
		if (start) begin
			b_reg <= b;
			a_reg <= a;
			count <= 0;
			ready <= 0;
			busy <= 1;
		end
		else if (busy) begin
			a_reg = a_reg - b_reg;
			count <= count + 1;
			
			if (a_reg < b_reg) begin
				ready <= 1;
				busy <= 0;
			end
		end
	 end

endmodule
