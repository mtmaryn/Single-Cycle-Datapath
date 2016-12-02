`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module System_Top(clk,load,R1,R2,R3,ALUsrc,RegDst,MemtoReg,MemWrite,MemRead,op, out, lt,eq,gt,Cout,memOut,clear);
	 input clk,load,ALUsrc,RegDst,MemtoReg,MemWrite,MemRead,clear;
	 input[2:0] op;
	 output[15:0] out,memOut,R1,R2,R3;
	 output lt,eq,gt,Cout;
	 
	 wire[15:0] instruction, Zw,Rw,Zwrite;
	 
	 reg [3:0] PC = 0;
	 always@(posedge clk)
	 begin
		PC = PC + 1;
	 end
	 
	 Instr_Mem inst1( .read(PC), .instr(instruction) );
	 MUX_16bit muxtop1(.select(RegDst), .X({12'b0,instruction[7:4]}), .Y({12'b0,instruction[3:0]}), .Z(Zwrite));
	 reg_file reg1( .A(R1), .B(R2), .C(memOut), .Aaddr(instruction[11:8]), .Baddr(instruction[7:4]), .Caddr(Zwrite[3:0]), .load(load), .clear(clear), .clk(clk) );
	 MUX_16bit muxtop2(.select(ALUsrc), .X(R2), .Y({12'b0,instruction[3:0]}), .Z(Zw));
	 alu alu1(.clk(clk), .X(R1), .Y(Zw), .out(out), .Cin(), .Cout(Cout), .lt(lt), .eq(eq), .gt(gt), .V(), .opcod(op));
	 Data_Memory DM1( .clk(clk), .MemWrite(MemWrite), .MemRead(MemRead), .Address(out), .WriteData(R2), .ReadData(Rw));
	 MUX_16bit muxtop3(.select(MemtoReg), .X(out), .Y(Rw), .Z(memOut));
	 
endmodule
