module Memory(
	input clk,
	input write_enable,
	input [31:0]address,
	input [31:0]write_data,
	output [31:0]read_data
    );
	 
	 // file descriptor to mem_file.txt
	 integer fd;
	 // iterator
	 integer i;
	 
 // first 256 cells are for instruction
 // the remaining of cells are for data
	parameter mem_size = 512;
	parameter mem_cell_size = 32;
	parameter filename = "memfile.txt";
	
	// update read_data when address changes
	assign read_data = mem[address / 4];
	
	// memory 512*32
	reg [mem_cell_size - 1:0]mem[mem_size - 1:0];
	
	// initialize the memory
	
	initial begin 
			$readmemh(filename, mem);
	end
	
	always @(posedge clk) begin
		if ( write_enable ) begin
			if ( address < mem_size && address >= 0 ) begin
				mem[address / 4] = write_data;
				fd = $fopen(filename,"w");
				if ( !fd ) begin 
					 $display("could not open the file");
				end else begin
					for ( i = 0; i < mem_size; i = i + 1 ) begin 
						$display("mem[%d] = %d", i, mem[i]);
						$fwrite(fd,  "%h\n", mem[i]);
					end
					$fclose(fd);
				end
				
			end
		end
	end
endmodule
