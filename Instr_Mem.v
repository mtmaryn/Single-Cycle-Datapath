`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module Instr_Mem( read, instr );
   input[2:0] read;
	output reg[15:0] instr;
	
	always@(read)
		case(read)
			0: instr = 0;
			1: instr = 2;
			2: instr = 4;
			3: instr = 6;
			4: instr = 8;
			5: instr = 10;
			6: instr = 12;
			7: instr = 14;
			default: instr = 50;
		endcase
endmodule
