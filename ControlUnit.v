`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(
	input [3:0] controlop,
	output reg [2:0] ALUop,
	output reg jump, regdest, Regwrite, ALUsrc, branch, memread, memwrite, memtoreg
	);
 
	always @ (controlop)
	begin
	case (controlop)
			0: //AND
			begin
				ALUop = 2;
				jump = 0;
				regdest = 1;
				Regwrite = 1;
				ALUsrc = 0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
			1: //OR
			begin
				ALUop=3;
				jump=0;
				regdest=1;
				Regwrite=1;
				ALUsrc=0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
	2: //Add
			begin
				ALUop=0;
				jump=0;
				regdest=1;
				Regwrite=1;
				ALUsrc=0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
	3: //AddImmediate
			begin
				ALUop=0;
				jump=0;
				regdest=0;
				Regwrite=1;
				ALUsrc=1;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
			6: //Subtract
			begin
				ALUop=1;
				jump=0;
				regdest=1;
				Regwrite=1;
				ALUsrc=0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
			7: //Set Less than
			begin
				ALUop=4;
				jump=0;
				regdest=1;
				Regwrite=1;
				ALUsrc=0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
			8: //LoadWord
			begin
				ALUop=0;
				jump=0;
				regdest=0;
				Regwrite=1;
				ALUsrc=1;
				branch=0;
				memread=1;
				memwrite=0;
				memtoreg=1;
			end
			10: //StoreWord
			begin
				ALUop=0;
				jump=0;
				regdest=0;
				Regwrite=1;
				ALUsrc=1;
				branch=0;
				memread=0;
				memwrite=1;
				memtoreg=1;
			end
			14: //BNE
			begin
				ALUop=5;
				jump=0;
				regdest=0;
				Regwrite=0;
				ALUsrc=0;
				branch=1;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
		  15: //Jump
			begin
				ALUop=0;
				jump=1;
				regdest=0;
				Regwrite=0;
				ALUsrc=1;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
			default:
			begin
				ALUop=0;
				jump=0;
				regdest=0;
				Regwrite=0;
				ALUsrc=0;
				branch=0;
				memread=0;
				memwrite=0;
				memtoreg=0;
			end
		  endcase
	end
endmodule