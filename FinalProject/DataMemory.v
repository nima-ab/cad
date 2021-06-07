`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:19 06/07/2021 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
	 input clk,
    input [31:0] addr,
    input write_en,
    input [31:0] write_data,
    input read_en,
    output [31:0] read_data
    );
	 integer i;  
	 wire [4:0] index = addr[7:2];
	 reg [31:0] memory [31:0];
	 initial begin  
		for(i=0;i<32;i=i+1)  
			memory[i] <= 32'd0;  
	 end
	 
	 always @(posedge clk) begin  
		  if (write_en)  
				 memory[index] <= write_data;  
    end  
    assign read_data = (read_en==1'b1) ? memory[index]: 16'd0; 


endmodule
