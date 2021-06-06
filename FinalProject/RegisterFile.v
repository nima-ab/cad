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
      wire     [31:0]     register [31:0];  
		
		//write
		assign register[0] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b000)? reg_write_data : register[0];
		assign register[1] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[1];
		assign register[2] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[2];
		assign register[3] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[3];
		assign register[4] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[4];
		assign register[5] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[5];
		assign register[6] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[6];
		assign register[7] = rst ? 16'b0 : reg_write_en & (reg_write_dest == 3'b001)? reg_write_data : register[7];
			
		//read
		assign reg_read_data_1 = register[reg_read_addr_1];
		assign reg_read_data_2 = register[reg_read_addr_2];
			


endmodule
