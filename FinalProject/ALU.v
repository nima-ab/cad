`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:07 06/04/2021 
// Design Name: 
// Module Name:    aLU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// additional Comments: 
//	alu_sel:
//	add 0000
// sub 0001
// and 0010
// or 0011
// xor 0100
// lui 0101
// sll 0110
// srl 0111
// sra 1000
//
//
//////////////////////////////////////////////////////////////////////////////////

module ALU(
    input [31:0] a,
    input [31:0] b,
    input [3:0] alu_sel,
    output [31:0] alu_out,
    output c_out
    );
	 reg [31:0] alu_res;
	 assign alu_out = alu_res;
	 integer tmp, i;
	always @(*)
		 begin
			  case(alu_sel)
			  4'b0000: // add
				  alu_res = a + b ; 
			  4'b0001: // sub
				  alu_res = a - b ;
			  4'b0010: // and
				  alu_res = a & b;
			  4'b0011: // or
				  alu_res = a | b;
			  4'b0100: // xor
				  alu_res = a ^ b;
				4'b0101: // lui ???
				  alu_res = a<<16;
				4'b0110: // sll
				  alu_res = a<<b;
				4'b0111: // srl
				  alu_res = a>>b;
				 4'b1000: // sra
					begin
						tmp = a;
						for (i = b; i > 0; i = i - 1) begin
							tmp = {tmp[31],tmp[31:1]};
						end
					alu_res = tmp;
					end
				 default: alu_res = a + b ; 
			  endcase
		 end
endmodule
