`timescale 1ns / 1ps

`include "RegisterFile.v"
`include "ALU.v"
`include "ControlUnit.v"
`include "ProgramCounter.v"
`include "Adder.v"
`include "Register.v"
`include "Memory.v"

module MIPS(
	input clk,
   input rst
    );

parameter [31:0] PC_FOUR = 4;

wire [3:0] alu_control;
wire [4:0] write_reg;

wire pc_write, i_or_d, ir_write, fetch, reg_dst, reg_write, alu_src, mem_to_reg, shift , zero, mem_write; 

wire [31:0] a, b, read_data_1, read_data_2, mem_addr, mem_data_reg, fetch_out, pc_adder_out, pc, pc_next, 
				instruction, alu_src_data_1, alu_Src_data_2, sign, mem_read_data, write_data, alu_result, alu_Out;

Register reg1(clk, alu_res, rst, pc_write, pc);
Mux mux1(instruction[20:16], instruction[15:11], write_reg, reg_dst);
Mux mux2(pc, Alu_out, mem_addr, i_or_d);
Memory mem(clk, mem_write, mem_addr, b, mem_read_data);
Register reg2(clk, mem_read_data, rst, 1, mem_data_reg);
Register reg3(clk, mem_read_data, rst, ir_write, instruction);
Mux mux3(alu_out, mem_data_reg, write_data, mem_to_reg);
RegisterFile regFile(clk, reg_write, instruction[25:21], instruction[20:16], write_reg, write_data, read_data_1, read_data_2);
Register reg4(clk, read_data_1, rst, 1, a);
Register reg5(clk, read_data_2, rst, 1, b);
Mux mux4(a, pc, fetch_out, fetch);
Mux mux5(b, PC_FOUR, pc_adder_out, fetch);
Mux mux6(pc_adder_out, sign, alu_src_data_2, alu_src);
SignExtend signExtend(instruction[15:0], sign);
Mux mux7(fetch_out, b, alu_src_Data_1, shift);
Register reg6(clk, alu_res, rst, 1, alu_out); 

Controlunit controlUnit(clk, rst, instruction[31:26], instruction[5:0], instruction[10:6], alu_src, i_or_d, fetch,
							  shift, ir_write, pc_write, reg_dst, reg_write, mem_to_reg, mem_write);
							  
ALU alu(alu_src_data_1, alu_src_data_2, alu_control, alu_res, zero);

endmodule

module SignExtend(
	input [15:0] cin,
	output [31:0] cout
    );
	assign cout = {{16{cin[15]}} , cin};
endmodule

module Mux(
	input cin,
	input [31:0] a,
	input [31:0] b,
	output [31:0] cout
    );
   assign cout = cin ? b : a;
endmodule

module ShiftLeft(
	 input [31:0] cin,
    output [31:0] cout
    );
	assign cout = cin << 2;
endmodule
