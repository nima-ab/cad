`timescale 1ns / 1ps

module RegisterFile(
	 input clk,
    input write_en,
    input [4:0]read_reg_1,
    input [4:0]read_reg_2,
    input [4:0]write_reg,
    input [31:0]write_data,
    output [31:0]read_data_1,
    output [31:0]read_data_2
    );

reg [31:0] register[31:0];
assign read_data_1 = register[read_reg_1];
assign read_data_2 = register[read_reg_2];

int var;

initial begin
    
    for (var = 0; var < 32; var = var + 1) begin
            register[var] <= 32'd0;
    end
end

always @ ( posedge clk ) begin
    register[0] = 0;
    if (write_reg != 0 && write_en)
        register[write_reg] = write_data;
end

endmodule