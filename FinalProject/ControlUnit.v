`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:18 06/06/2021 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
    input [5:0] opcode,
	 output reg reg_dst, //how the destination register is specified : 0 rt 1 rd
	 output reg reg_write, //enables a write to one of the registers
	 
    output reg alu_op, //specifies if the operation should be determined from the function bits 0(R) or opcode 1(I)
    output reg alu_src, //the second source operand for the ALU : 0 register 1 sign-extended
	 
	 output reg branch, //combined with a condition test boolean to
	 //enable loading the branch target address into the PC

    output reg mem_read, //enables a memory read for load instructions
    output reg mem_write, //enables a memory write for store instructions
	 output reg mem_to_reg //where the value to be written comes from : 0 alu result 1 memory
    );
	 
	 always @(*)  
		 begin
			 if(opcode == 6'b000000)//R-Type
				begin
					reg_dst = 1;
					reg_write = 1;
					alu_op = 0;
					alu_src = 0;
					branch = 0;
					mem_read = 0;
					mem_write = 0;
					mem_to_reg = 0;
				end
			else //I-format
				begin
					alu_op = 1;
					reg_dst = 0;
					case(opcode)
						6'b100011: //lw
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 1;
								mem_write = 0;
								mem_to_reg = 1;
							end						
							
							6'b101011: //sw
							begin
								reg_write = 0;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 1;
								mem_to_reg = 0;
							end
						
						6'b001000: // addi
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							
						6'b001100: // andi
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							
						6'b001101: // ori
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							
						6'b001110: //xori
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
						
						6'b000100: //beq 
							begin
								reg_write = 0;
								alu_src = 0;
								branch = 1;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							
						6'b000101://bne
							begin
								reg_write = 0;
								alu_src = 0;
								branch = 1;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							
						6'b01111: //lui
							begin
								reg_write = 1;
								alu_src = 1;
								branch = 0;
								mem_read = 0;
								mem_write = 0;
								mem_to_reg = 0;
							end
							default: reg_write = 0; 
						endcase
				end
				
			
			  
		 end


endmodule
