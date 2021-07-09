`timescale 1ns / 1ps

module ALU(
    input [31:0] a,
    input [31:0] b,
    input [3:0] alu_control,
    output [31:0] alu_out,
    output zero
    );
	 reg [31:0] alu_res;
	 wire signed [31:0] signed_a;
	 assign signed_a = a;
	 assign alu_out = alu_res;
	 assign zero = alu_res == 31'b0;
	 integer tmp, i;
	always @(*)
		 begin
			  case(alu_control)
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
				4'b0101: // lui 
				  alu_res = a<<16;
				4'b0110: // sll
				  alu_res = a<<b;
				4'b0111: // srl
				  alu_res = a>>b;
				 4'b1000: // sra
					alu_res = a>>>b;
				 default: alu_res = a + b ; 
			  endcase
		 end
endmodule