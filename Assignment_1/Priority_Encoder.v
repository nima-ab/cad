`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:50 04/25/2021 
// Design Name: 
// Module Name:    priority_encoder 
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
module priority_encoder(
	input [7:0] i,
	input en,
	output reg [2:0] o
   );
	 
	always @(en, i) begin
		if (en) begin
			case(i)
				8'b00000001 : o = 3'b000;
				8'b0000001x : o = 3'b001;
				8'b000001xx : o = 3'b010;
				8'b00001xxx : o = 3'b011;
				8'b0001xxxx : o = 3'b100;
				8'b001xxxxx : o = 3'b101;
				8'b01xxxxxx : o = 3'b110;
				8'b1xxxxxxx : o = 3'b111;
			endcase
		end
	end


endmodule
