`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module Instr_Mem( read, instr );
   input[3:0] read;
	output reg[15:0] instr;
	
	always@(read)
		case(read)
			 0: instr =  0;
			 1: instr =  2;
			 2: instr =  4;
			 3: instr =  6;
			 4: instr =  8;
			 5: instr = 10;
			 6: instr = 12;
			 7: instr = 14;
			 8: instr = 16;
			 9: instr = 18;
			10: instr = 20;
			11: instr = 22;
			12: instr = 24;
			13: instr = 26;
			14: instr = 28;
			15: instr = 30;
			default: instr = 50;
		endcase
endmodule
