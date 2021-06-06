`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:58 06/06/2021 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(
    input [5:0] func,
	 input [5:0] opcode,
    input alu_op, //0: R-Type, 1:I-Type
    output [3:0] alu_sel
    );
	 reg [3:0] res;
	 assign alu_sel = res;
	 always @(*)
		 begin
			if(alu_op == 1'b0) //R
				begin
					case(func)
						6'b100000: // add
							res = 4'b0000 ; 
						6'b100010: //sub
							res = 4'b0001;
						6'b100100: //and
							res = 4'b0010;
						6'b100101: //or
							res = 4'b0011;
						6'b100110: //xor
							res = 4'b0100;
						6'b000000: //sll
							res = 4'b0110;
						6'b000010: //srl
							res = 4'b0111;
						6'b000011: //sra
							res = 4'b1000;
						default: res = 4'b0000; 
					endcase
				end
			else if (alu_op == 1'b1) //I
				begin
					case(opcode)
						6'b001000 || 6'b100011 || 6'b101011: // addi, lw, sw
							res = 4'b0000 ; 
						6'b000101 || 000100: //bne, beq
							res = 4'b0001;
						6'b001100: //andi
							res = 4'b0010;
						6'b001101: //ori
							res = 4'b0011;
						6'b001110: //xori
							res = 4'b0100;						
						6'b001111: //lui
							res = 4'b0101;
						default: res = 4'b0000; 
					endcase
				end
				
			  
		 end


endmodule
