`timescale 1ns / 1ps

module Adder(
	input [31:0]a,
	input [31:0]b,
	output [31:0] res
    );
	 
wire [32:0]wires;
assign wires[0] = 0;

genvar var;

generate
	for (var = 0; var < 32; var = var + 1) begin
		FullAdder fa(.a(a[var]),
			.b(b[var]), 
			.cin(wires[var]), 
			.cout(wires[var+1]), 
			.res(res[var]));
	end

endgenerate

endmodule

module FullAdder(
	input a, 
	input b,
	input cin, 
	output cout, 
	output res
	 );

assign {cout, res} = a + b + cin;

endmodule
