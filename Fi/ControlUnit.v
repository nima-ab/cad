`timescale 1ns / 1ps

module Controlunit(input clk,
				input reset,
				input [5:0] opcode, 
				input [5:0] func_code,
				output reg [3:0] alu_control,
				output reg alu_src,
				output reg i_or_d,
				output reg fetch,
				output reg shift,
				output reg ir_write,
				output reg pc_write,
				output reg reg_dst,
				output reg reg_write,
				output reg mem_to_reg,
				output reg mem_write
               );

// We have 5 cycles fetch, decode, Execution, memory access or R type, memory read
integer cycle;

initial begin
	cycle = 0;
end

always @(posedge clk) begin 

	if (reset == 1) begin
		cycle = 0;
	end

	else begin
		case (cycle) 

			// fetch
			0: begin		
				alu_control = 4'b0000;
				fetch = 1;
				ir_write = 1;
				pc_write = 1;
				shift = 0;
				mem_to_reg = 0;
				i_or_d = 0;
				alu_src = 0;
				reg_write = 0;
				mem_write = 0;
				reg_dst = 0;
			
				cycle = cycle + 1;
			end
			
			// decode
			1: begin		
				case (opcode) 
					6'b000000: begin

						// R-type
						case (func_code)

							// add
							6'b100000: begin 
								alu_control = 4'b0000;  
								reg_dst = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								shift = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;
							end
								
							// sub
							6'b100010: begin 
								alu_control = 4'b0000;  
								reg_dst = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								shift = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;
							end

							// and
							6'b100100: begin 
								alu_control = 4'b0000;  
								reg_dst = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								shift = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;

							end

							// or
							6'b100101: begin 
								alu_control = 4'b0000;  
								reg_dst = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								shift = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;
							end	

							// xor
							6'b100110: begin 
								alu_control = 4'b0000; 
								reg_dst = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								shift = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;
							end

							// sll
							6'b000000: begin 
								alu_control = 4'b0000; 
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;			
							end	

							// srl
							6'b000010: begin 
								alu_control = 4'b0000; 
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write = 0;	
							end
						endcase		  
					end

					// addi
					6'b001000: begin                       
						alu_control = 4'b0000; 
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write = 0;
					end  

					// andi
					6'b001100: begin      
						alu_control = 4'b0000;                     
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write = 0;
					end 

					// ori
					6'b001101: begin   
						alu_control = 4'b0000;                       
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write = 0;
					end  

					// xori
					6'b001110: begin                          
						alu_control = 4'b0000;                      
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write =	0;
					end       

					// lui
					6'b001111:  begin                       
						alu_control = 4'b0000;                      
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write =	0;
					end          

					// lw
					6'b100011:  begin                         
						alu_control = 4'b0000;                      
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write =	0; 
					end

					// sw
					6'b101011:  begin                         
						alu_control = 4'b0000;                      
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						alu_src = 0;
						reg_write = 0;
						mem_write =	0;
					end

					// nop
				   default: begin
						alu_src = x;         
						i_or_d = x;
						reg_write = x;          
						reg_dst = x;
						shift = x;
						fetch = x;
						ir_write = x;
						pc_write = x;
						mem_to_reg = x;
						mem_write =	x;  
					end    
				endcase

				cycle = cycle + 1;
			end

			2: begin 
				case (opcode) 

					// R-type
					6'b000000: begin                          
						case (func_code)

							// add
							6'b100000: begin
								alu_control = 4'b0000;                      
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end

							// sub
							6'b100010: begin
								alu_control = 4'b0001;                      
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end

							// and
							6'b100100: begin
								alu_control = 4'b0010;                      
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end

							// or
							6'b100101: begin
								alu_control = 4'b0011;                      
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end

							// xor	
							6'b100110: begin 
								alu_control = 4'b0100;                      
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end

							// sll
							6'b000000: begin
								alu_control = 4'b0101;                      
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;		
							end

							// srl
							6'b000010: begin
								alu_control = 4'b0110;                      
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								i_or_d = 0;
								alu_src = 0;
								reg_write = 0;
								mem_write =	0;
							end
						endcase
					end

					// addi
				  	6'b001000: begin       
						alu_control = 4'b0000;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0; 
					end  

					// andi
				  	6'b001100: begin                  
						alu_control = 4'b0010;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0;
					end 

					// ori
				  	6'b001101: begin           
						alu_control = 4'b0011;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0; 
					end  

					// xori
					6'b001110: begin                  
						alu_control = 4'b0100;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0; 
					end   

					// lui    						
				  	6'b001111:  begin                       
						alu_control = 4'b0101;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0;
					end 

					// lw         
				  	6'b100011:  begin                      
						alu_control = 4'b0000;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0; 
					end

					// sw
				  	6'b101011:  begin                        
						alu_control = 4'b0000;   
						alu_src = 1;                   
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						i_or_d = 0;
						reg_write = 0;
						mem_write =	0;
					end

					// nop
				   default: begin
						alu_src = x;         
						i_or_d = x;
						reg_write = x;          
						reg_dst = x;
						shift = x;
						fetch = x;
						ir_write = x;
						pc_write = x;
						mem_to_reg = x;
						mem_write =	x;  
					end     
				endcase

				cycle = cycle + 1;
			end

			3: begin 
				case (opcode) 

					// R-type
					6'b000000: begin                          
						case (func_code)

							// add
							6'b100000: begin
								alu_control = 4'b0000; 
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end

							// sub
							6'b100010: begin
								alu_control = 4'b0001;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end

							// and
							6'b100100: begin
								alu_control = 4'b0010;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end

							// or
							6'b100101: begin
								alu_control = 4'b0011;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end

							// xor	
							6'b100110: begin 
								alu_control = 4'b0100;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 0;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end

							// sll
							6'b000000: begin
								alu_control = 4'b0101;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;	
							end

							// srl
							6'b000010: begin
								alu_control = 4'b0110;                      
								i_or_d = 1;
								reg_write = 1;                     
								reg_dst = 1;
								shift = 1;
								fetch = 0;
								ir_write = 0;
								pc_write = 0;
								mem_to_reg = 0;
								alu_src = 0;
								mem_write =	0;
							end
						endcase

						cycle = 0;
					end

					// addi
				  	6'b001000: begin       
						alu_control = 4'b0000;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	0; 

						cycle = 0;
					end  

					// andi
				  	6'b001100: begin                  
						alu_control = 4'b0010;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	0; 

						cycle = 0;
					end 

					// ori
				  	6'b001101: begin           
						alu_control = 4'b0011;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	0; 

						cycle = 0;
					end  

					// xori
					6'b001110: begin                  
						alu_control = 4'b0100;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	0; 

						cycle = 0;
					end   

					// lui    						
				  	6'b001111:  begin                       
						alu_control = 4'b0101;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	0; 
						cycle = 0;
					end 

					// lw         
				  	6'b100011:  begin                      
						alu_control = 4'b0000;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 0;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 1;
						mem_write =	0; 

						cycle = cycle + 1;
					end

					// sw
				  	6'b101011:  begin                        
						alu_control = 4'b0000;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 0;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	1; 

						cycle = cycle + 1;
					end

					// nop
				    default: begin
						alu_src = x;         
						i_or_d = x;
						reg_write = x;          
						reg_dst = x;
						shift = x;
						fetch = x;
						ir_write = x;
						pc_write = x;
						mem_to_reg = x;
						mem_write =	x;  
					end    
				endcase
			end

			4: begin
				case (Opcode)          

					// lw
				  	6'b100011:  begin                        
						alu_control = 4'b0000;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 1;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 1;
						mem_write =	0; 
					end

					// sw
				  	6'b101011:  begin                         
						alu_control = 4'b0000;   
						alu_src = 1;         
						i_or_d = 1;
						reg_write = 0;          
						reg_dst = 0;
						shift = 0;
						fetch = 0;
						ir_write = 0;
						pc_write = 0;
						mem_to_reg = 0;
						mem_write =	1;  
					end

					// nop
					default: begin
						alu_src = x;         
						i_or_d = x;
						reg_write = x;          
						reg_dst = x;
						shift = x;
						fetch = x;
						ir_write = x;
						pc_write = x;
						mem_to_reg = x;
						mem_write =	x;  
					end
				endcase

			  	cycle = 0;
			end	
		endcase
	end
end 

endmodule
