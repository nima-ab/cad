`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:00 05/07/2021
// Design Name:   Divider_4bit
// Module Name:   D:/Educational Files/Digital Systems/cad-master/Assignment_2/Q4_Q5/Divider_4bit_testbench.v
// Project Name:  Q4_Q5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Divider_4bit_testbench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg start;
	reg clk;

	// Outputs
	wire ready;
	wire busy;
	wire [3:0] count;
	wire [3:0] q;
	wire [2:0] r;

	// Instantiate the Unit Under Test (UUT)
	Divider_4bit uut (
		.a(a), 
		.b(b), 
		.start(start), 
		.clk(clk), 
		.ready(ready), 
		.busy(busy), 
		.count(count), 
		.q(q), 
		.r(r)
	);

	initial begin
		start = 0;
		clk = 0;
		
		a = 7;
		b = 2;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 14;
		b = 8;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 7;
		b = 6;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 13;
		b = 2;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 5;
		b = 3;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 14;
		b = 2;
		#10 start = 1;
		#10 start = 0;
		#90;
		
		a = 15;
		b = 3;
		#10 start = 1;
		#10 start = 0;
		#80;
		
		a = 3;
		b = 2;
		#10 start = 1;
		#10 start = 0;
		#80;
		
		a = 9;
		b = 7;
		#10 start = 1;
		#10 start = 0;
		#80;
		
		a = 11;
		b = 5;
		#10 start = 1;
		#10 start = 0;
		#80;
		
	end
	always #5 clk = !clk;
      
endmodule

