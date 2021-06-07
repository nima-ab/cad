`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:24 06/07/2021 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter(
    input clk,
    input rst,
    input [31:0] pc_in,
    output reg [31:0] pc_out
    );
	 
	always @ (posedge clk or posedge rst)
	begin
		if(rst==1'b1)
			pc_out<=0;
		else
			pc_out<=pc_in;
	end


endmodule
