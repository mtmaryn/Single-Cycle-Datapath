`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module Instr_Mem( read, instr );
   input[3:0] read;
	output reg[15:0] instr;
	
	always@(read)
		case(read)
			 0: instr = 16'h0120;
			 1: instr = 16'h8111; //Load value of register 1 into 1
			 2: instr = 16'h8111;
			 3: instr = 16'h8222; //Load value of 2 into 2
			 4: instr = 16'h8222;
			 5: instr = 16'h8440; //load 1 for sub
			 6: instr = 16'h8440; 
			 7: instr = 16'h0120;
			 8: instr = 16'h0340; //check the value
			 9: instr = 16'h2133; //add 
			10: instr = 16'h6242; //subtract 1
			11: instr = 16'hE287; //check if its 1
			12: instr = 16'h0120;
			13: instr = 16'h0330;
			14: instr = 16'h0330;
			15: instr = 16'h0330;
			default: instr = 50;
		endcase
endmodule
