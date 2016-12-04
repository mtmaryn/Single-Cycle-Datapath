`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module MIPS(
	 input clk, clear,
	 output reg [3:0] PC = 0,
	 output[15:0] R1, R2, R3
	 );

	 
	 wire[2:0] ALUop;
	 wire RegWrite, ALUsrc, RegDst, MemtoReg, MemWrite, MemRead, Branch, Jump,lt,eq,gt,Cout;;
	 wire[15:0] instruction, Zw, Rw, Zwrite,out, memOut,A,B;
	 
	 always@(posedge clk)
	 begin
		if(Branch == 1'b1 && eq == 1'b0)
			PC = instruction[3:0];
		else
			PC = PC + 1;
	 end
	 Instr_Mem inst1( .read(PC), .instr(instruction) );
	 ControlUnit CU1(.controlop(instruction[15:12]), .ALUop(ALUop),.jump(Jump), .regdest(RegDst), .Regwrite(RegWrite), .ALUsrc(ALUsrc), .branch(Branch), .memread(MemRead), .memwrite(MemWrite), .memtoreg(MemtoReg));
	 MUX_16bit muxtop1(.select(RegDst), .X({12'b0,instruction[7:4]}), .Y({12'b0,{12'b0,instruction[3:0]}}), .Z(Zwrite));
	 reg_file reg1( .A(A), .B(B), .C(memOut), .Aaddr(instruction[11:8]), .Baddr(instruction[7:4]), .Caddr(Zwrite[3:0]), .load(RegWrite), .clear(clear), .clk(clk), .r1(R1), .r2(R2), .r3(R3) );
	 MUX_16bit muxtop2(.select(ALUsrc), .X(B), .Y({12'b0,instruction[3:0]}), .Z(Zw));
	 alu alu1(.clk(clk), .X(A), .Y(Zw), .out(out), .Cin(), .Cout(Cout), .lt(lt), .eq(eq), .gt(gt), .V(), .opcod(ALUop));
	 Data_Memory DM1( .clk(clk), .MemWrite(MemWrite), .MemRead(MemRead), .Address(out), .WriteData(R2), .ReadData(Rw));
	 MUX_16bit muxtop3(.select(MemtoReg), .X(out), .Y(Rw), .Z(memOut));
	 
endmodule
