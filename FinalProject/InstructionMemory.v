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
			imem[0]  = 32'b001000_00010_00001_0011111111111100;  //addi-001000 reg2 + 00111111111111100 to reg 1
			imem[1]  = 32'b001000_00001_00000_0000000000000110;  //addi reg1 + 00000000000000110 to reg 0
			imem[2]  = 32'b000100_00111_00110_0000000000001100;  //if reg6 == reg7, add address 12
			imem[3]  = 32'b001000_00010000011111111111111111;  
			imem[15] = 32'b000000_00001_00000_00101_00000_100101;  //and reg1 and reg0 to reg5

      end  
      assign instruction = imem[addr]; 

endmodule
