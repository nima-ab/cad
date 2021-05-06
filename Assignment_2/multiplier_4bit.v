`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:20 05/06/2021 
// Design Name: 
// Module Name:    multiplier_4bit 
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
module multiplier_4bit(
		input [3:0] a,
		input [3:0] b,
		
		output [7:0] r
    );
		
		and(r[0], a[0], b[0]);
		
		wire [3:0] w0;
		and(w0[0], a[0], b[1]);
		and(w0[1], a[0], b[2]);
		nand(w0[2], a[0], b[3]);
		assign w0[3] = 1;
		
		wire [3:0] w1;
		and(w1[0], a[1], b[0]);
		and(w1[1], a[1], b[1]);
		and(w1[2], a[1], b[2]);
		nand(w1[3], a[1], b[3]);
		
		wire [4:0] w2;
		
		ripple_adder_dataflow rad1 (
			.a (w0),
			.b (w1),
			.cin (0),
			.sum (w2[3:0]),
			.cout (w2[4])
		);
		
		assign r[1] = w2[0];
		
		wire [3:0] w3;
		and(w3[0], a[2], b[0]);
		and(w3[1], a[2], b[1]);
		and(w3[2], a[2], b[2]);
		nand(w3[3], a[2], b[3]);
		
		wire [4:0] w4;
		
		ripple_adder_dataflow rad2 (
			.a (w2[4:1]),
			.b (w3),
			.cin (0),
			.sum (w4[3:0]),
			.cout (w4[4])
		);
		
		assign r[2] = w4[0];
		
		wire [3:0] w5;
		nand(w5[0], a[3], b[0]);
		nand(w5[1], a[3], b[1]);
		nand(w5[2], a[3], b[2]);
		and(w5[3], a[3], b[3]);

		wire w6;
		
		ripple_adder_dataflow rad3 (
			.a (w4[4:1]),
			.b (w5),
			.cin (0),
			.sum (r[6:3]),
			.cout (w6)
		);
		
		xor(r[7], w6, 1);
		
endmodule
