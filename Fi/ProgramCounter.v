`timescale 1ns / 1ps

module ProgramCounter(clk, rst, cin, cout);

    input clk, rst;
    input [31:0] cin;
    output reg [31:0] cout;

    always @(posedge clk) begin
        if (rst) begin
            cout <= 0;
        end
        else begin
            cout <= cin;
        end
    end
endmodule