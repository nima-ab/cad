`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:52:23 06/04/2021
// Design Name:   ALU
// Module Name:   D:/iust/cad/projects/ALU/alu_testbench.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_testbench;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] alu_sel;

	// Outputs
	wire [31:0] alu_out;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.alu_sel(alu_sel), 
		.alu_out(alu_out), 
		.c_out(c_out)
	);
	integer i,j;
	initial begin
		// Initialize InputsS

		// Wait 100 ns for global reset to finish
		#100;
		alu_sel = 4'b0000; //add
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
      alu_sel = 4'b0001; //sub
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end

      alu_sel = 4'b0010; //and
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
      alu_sel = 4'b0011; //or
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
			
		end      
		alu_sel = 4'b0100; //xor
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
		alu_sel = 4'b0101; //lui
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
		alu_sel = 4'b0110; //lui
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
		alu_sel = 4'b0110; //sll
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
		
		alu_sel = 4'b0111; //srl
		for (i=0; i<16; i=i+1) begin
			a = i;
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end		
		
		alu_sel = 4'b1000; //sra
		for (i=0; i<16; i=i+1) begin
			a = 4294901760 + i;
			
			for (j=0; j<16; j=j+1) begin
				b = j;
				#100;
			end
			#100;
		end
	end
      
endmodule

