`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:47 05/01/2021 
// Design Name: 
// Module Name:    Q2 
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


module adder_subtractor(
    input sub,
    input ci,
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output co
    );
	 //When sub = 0,
	 //module acts as an adder
	 //When sub = 1,
	 //module acts as a subtractor :
	 //adds a to 2's complement of b
	 //b's 2's complement is created by inverting its bits
	 //and adding 1
	 wire [3:0] c; //carry
	 wire [3:0] d; //result of : xor b and sub 
	 wire subci; //result of : xor sub ci
	 xor(subci, sub, ci);
	 xor(d[0],b[0],sub);
	 xor(d[1],b[1],sub);
	 xor(d[2],b[2],sub);
	 xor(d[3],b[3],sub);
	 full_adder_structural u1(a[0], d[0], subci, c[0], s[0]);
	 full_adder_structural u2(a[1], d[1], c[0], c[1], s[1]);
	 full_adder_structural u3(a[2], d[2], c[1], c[2], s[2]);
	 full_adder_structural u4(a[3], d[3], c[2], c[3], s[3]);
	 assign co = c[3];
endmodule
