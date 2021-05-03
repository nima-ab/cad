`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:38 05/01/2021 
// Design Name: 
// Module Name:    Q3 
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

module CarryGenerator_4bit(
    input [3:0] p,
	 input [3:0] g,
	 input cin,
	 output [4:0] c    );
	 assign c[0] = cin;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign c[4] = g[3] | (p[3] & c[3]);
endmodule

module CLA_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output co,
    output [3:0] s
    );
	wire [3:0] p,g;
	wire [4:0] c;
	assign p = a^b;
	assign g = a&b;
	assign co = c[4];
	CarryGenerator_4bit gen(.p(p),.g(g),.cin(cin),.c(c));
	
	//sum:
	xor x1(s[0], c[0], p[0]);
	xor x2(s[1], c[1], p[1]);
	xor x3(s[2], c[2], p[2]);
	xor x4(s[3], c[3], p[3]);
	

endmodule


module CLA_adder_16bit(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output co,
    output [15:0] s
    );
	 wire [3:0] carry;
	CLA_4bit cla1(
	.a(a[3:0]),
	.b(b[3:0]),
	.cin(cin),
	.co(carry[0]),
	.s(s[3:0])
	);
	
	CLA_4bit cla2(
	.a(a[7:4]),
	.b(b[7:4]),
	.cin(carry[0]),
	.co(carry[1]),
	.s(s[7:4])
	);
	
	CLA_4bit cla3(
	.a(a[11:8]),
	.b(b[11:8]),
	.cin(carry[1]),
	.co(carry[2]),
	.s(s[11:8])
	);
	
	CLA_4bit cla4(
	.a(a[15:12]),
	.b(b[15:12]),
	.cin(carry[2]),
	.co(co),
	.s(s[15:12])
	);
	
endmodule
