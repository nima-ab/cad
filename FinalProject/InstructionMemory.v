`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:50 06/07/2021 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(
    input [31:0] pc,
    output wire [31:0] instruction
    );

      wire [4 : 0] addr = pc[6 : 2];  //multiplied by 4 
      reg [31:0] imem[31:0];  
      initial  
      begin  
			imem[0] = 32'b00100000010000010011111111111100;  //add reg2 + 00111111111111100 to reg 1
			imem[1] = 32'b00100000001000000000000000000110;  //add reg1 + 00000000000000110 to reg 0
			imem[2] = 32'b00100000010000011111111111111111;  
			imem[3] = 32'b00100000010000011111111111111111;  

      end  
      assign instruction = (pc[31:0] < 32)? imem[addr]: 32'd0; 

endmodule
