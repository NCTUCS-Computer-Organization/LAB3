// Author:0711282 邱頎霖

module Decoder(
    instr_op_i,
    RegWrite_o,
    ALU_op_o,
    ALUSrc_o,
    RegDst_o,
    Branch_o,
	mem_write_o,
	mem_read_o,
	mem_to_reg,
	jump_o
    );

//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output         RegDst_o;
output         Branch_o;

output 		   mem_write_o;
output 		   mem_read_o;
output         mem_to_reg;
output         jump_o;

//Internal Signals
reg    [3-1:0] ALU_op_o;
reg            ALUSrc_o;
reg            RegWrite_o;
reg            RegDst_o;
reg            Branch_o;

reg 		   mem_write_o;
reg 		   mem_read_o;
reg            mem_to_reg;
reg            jump_o;


always @( * ) begin
	if(instr_op_i==0)begin
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b000;
		ALUSrc_o   <= 0;
		RegDst_o   <= 1;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end
	else if(instr_op_i== 8)begin  //addi
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b001;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end
	else if(instr_op_i== 11)begin //sltiu
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b010;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end	
	else if(instr_op_i== 4)begin //beq
		RegWrite_o <= 0;
		ALU_op_o   <= 3'b100;
		ALUSrc_o   <= 0;
		RegDst_o   <= 0;
		Branch_o   <= 1; // not important		
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;		
		jump_o <= 0;
	end	
	else if(instr_op_i== 15)begin //lui
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b011;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end	
	else if(instr_op_i== 13)begin // ori
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b111;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end	
	else if(instr_op_i==5)begin //bne
		RegWrite_o <= 0;
		ALU_op_o   <= 3'b110;
		ALUSrc_o   <= 0;	
		RegDst_o   <= 0;
		Branch_o   <= 1; // not important
		mem_write_o <= 0;
		mem_read_o <= 0;
		mem_to_reg <= 0;
		jump_o <= 0;
	end
	else if(instr_op_i==35)begin // load word
		$display("hi");
		RegWrite_o <= 1;
		ALU_op_o   <= 3'b101;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 0;
		mem_read_o <= 1;
		mem_to_reg <= 0; // 0: result from memory
		jump_o <= 0;
	end
	else if(instr_op_i==43)begin // save word
		RegWrite_o <= 0;
		ALU_op_o   <= 3'b101;
		ALUSrc_o   <= 1;
		RegDst_o   <= 0;
		Branch_o   <= 0;
		mem_write_o <= 1;
		mem_read_o <= 0;
		mem_to_reg <= 1; // 1: result from alu 
		jump_o <= 0;
	end
end

endmodule





















