`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:29 06/07/2021 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    input clk,
	 input rst
    );
	 wire[31:0] instruction;
	 wire reg_dst,reg_write,alu_op,alu_src,branch,mem_read,mem_write,mem_to_reg;
	 wire [3:0] alu_sel;
	 wire reg_write_en;
	 wire [4:0] reg_write_dest; 
	 wire [31:0] reg_write_data; 
    wire [4:0] reg_read_addr_1; 
    wire [31:0] reg_read_data_1; 
	 wire [4:0] reg_read_addr_2;
	 wire [31:0] reg_read_data_2;
	 wire [31:0] alu_input1;
	 wire [31:0] alu_input2;
	 wire [31:0] alu_output;
	 wire alu_zero;
	 wire [31:0] data_from_mem;
	 wire [31:0] sign_extend;
	 wire [31:0] zero_extend;
	 assign pc = 32'd0;
	 assign rst = 1;
	 assign zero_extend = {{16{1'b0}},instruction[15:0]}; 
	 assign sign_extend = {{16{instruction[15]}},instruction[15:0]}; 
	 //wire [31:0] pc_curr, pc_nxt;
	 
	//ProgramCounter p_counter( .clk(clk), .rst(rst), .pc_in(pc_curr), .pc_out(pc_nxt));
	 
	InstructionMemory instr_mem(.pc(pc), .instruction(instruction));
	ControlUnit control_unit(.opcode(instruction[31:26]),
		.reg_dst(reg_dst),
		.reg_write(reg_write),
		.alu_op(alu_op),
		.alu_src(alu_src),
		.branch(branch),
		.mem_read(mem_read),
		.mem_write(mem_write),
		.mem_to_reg(mem_to_reg)
	);
	ALUControl alu_ctrl(
		.func(instruction[5:0]),
		.opcode(instruction[31:26]),
		.alu_op(alu_op),
		.alu_sel(alu_sel)
	);
	assign reg_write_dest = reg_dst ? instruction[15:11] : instruction[20:16];  //0 rt 1 rd
	assign reg_write_data = mem_to_reg ? data_from_mem : alu_output; 
	assign reg_read_addr_1 = instruction[25:21]; //rs
	assign reg_read_addr_2 = instruction[20:16]; //rt
	RegisterFile reg_file(
		.clk(clk),
		.rst(rst),
		.reg_write_en(reg_write), //control
		.reg_write_dest(reg_write_dest), //mux
		.reg_write_data(reg_write_data), //mux
		.reg_read_addr_1(reg_read_addr_1),  //from instruction (rs)
		.reg_read_data_1(reg_read_data_1), //goes to alu
		.reg_read_addr_2(reg_read_addr_2), //from instruction (rt)
		.reg_read_data_2(reg_read_data_2) //goes to mux with alu_src as select
	);
	assign alu_input2 = alu_src ? sign_extend : reg_read_data_2;
	ALU alu(
		.a(reg_read_data_1), //register
		.b(alu_input2), //mux done
		.alu_sel(alu_sel), //control
		.alu_out(alu_output), //goes to memory address
		.zero(alu_zero)
	);
	DataMemory data_mem(
		.clk(clk),
		.addr(alu_output),
		.write_en(mem_write),
		.write_data(reg_read_data_2), //from reg file
		.read_en(mem_read),
		.read_data(data_from_mem) //goes to mux for write in reg
	);

endmodule
