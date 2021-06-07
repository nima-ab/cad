`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:09 06/06/2021 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
      input                    clk,  
      input                    rst,  
      // write port  
      input                    reg_write_en,  
      input          [4:0]     reg_write_dest,  
      input          [31:0]    reg_write_data,  
      //read port 1  
      input          [4:0]     reg_read_addr_1,  
      output         [31:0]    reg_read_data_1,  
      //read port 2  
      input          [4:0]     reg_read_addr_2,  
      output         [31:0]    reg_read_data_2 
    );
      reg     [31:0]     register [31:0];  
		
		//write
		always @ (posedge clk or posedge rst) begin  
           if(rst) begin  
                register[0] <= 16'd0;  
                register[1] <= 16'd0;  
                register[2] <= 16'd0;  
                register[3] <= 16'd0;  
                register[4] <= 16'd0;  
                register[5] <= 16'd0;  
                register[6] <= 16'd0;  
                register[7] <= 16'd0;       
           end  
           else begin  
                if(reg_write_en) begin  
                     register[reg_write_dest] <= reg_write_data;  
                end  
           end  
      end  
		//read
		assign reg_read_data_1 = register[reg_read_addr_1];
		assign reg_read_data_2 = register[reg_read_addr_2];
			


endmodule
