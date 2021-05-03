`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:47 05/03/2021 
// Design Name: 
// Module Name:    FIFO 
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
module FIFO(
			input [7:0] in,
			input pop,
			input enable,
			input clock,
			output reg ready,
			output reg overflow,
			output reg [7:0] out
    );
	 reg [7:0]fifo[7:0];
	 reg [2:0]read = 3'b000;
	 reg [2:0]write = 3'b000;
	 
	 initial @(*) begin
		overflow <= 1'b0;
		ready <= 0;
	 end
	 
	 always @(posedge clock) begin
		if ( enable == 1'b1 ) begin
			if ( pop == 1'b1 ) begin
				out <= fifo[read];
				read <= read + 1'b1;
				
				if ( read == write ) ready <= 1'b0;
				else ready <= 1'b1;
			end
			else if ( pop == 1'b0 )
			begin					
				fifo[write] <= in;
				write <= write + 1'b1;

				if ( read == write ) overflow <= 1'b1;
				else overflow <= 1'b0;
			end
		end
	 end


endmodule
