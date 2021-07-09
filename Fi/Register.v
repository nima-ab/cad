`timescale 1ns / 1ps

module Register(
	input clk,
	input [31:0] cin,
	input rst,
	input write,
	output reg [31:0] cout
    );
	 
	initial begin
		cout = 0;
	end
	
	always @ (posedge clk) begin 
		if (rst)
			cout <= 0;
		else if(write)
			cout <= cin;
	end

endmodule
