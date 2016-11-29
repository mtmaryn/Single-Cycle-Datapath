`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module System_Top(clk,load,C,A,B);
	 input clk,load;
	 input[15:0] C;
	 output[15:0] A,B;
	 
	 wire [15:0] instruction;
	 reg [3:0] PC = 0;
	 always@(clk)
	 begin
		PC = PC + 1;
	 end
	 Instr_Mem inst1( .read(PC), .instr(instruction) );
	 reg_file reg1( .A(A), .B(B), .C({12'b0,instruction[15:12]}), .Aaddr(instruction[11:8]), .Baddr(instruction[7:4]), .Caddr(instruction[3:0]), .load(load), .clear(), .clk(clk) );
endmodule
