`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module Data_Memory( clk, MemWrite, MemRead, Address, WriteData, ReadData );
	input  clk, MemWrite, MemRead;
	input  [15:0] WriteData;
	input  [15:0] Address;
	output reg[15:0] ReadData;
	
	reg[15:0]d_mm[0:15];
	initial begin
		d_mm[0]  = 16'h0001;
		d_mm[1]  = 16'h0004;
		d_mm[2]  = 16'h0006;
		d_mm[3]  = 16'h0004;
		d_mm[4]  = 16'h0005;
		d_mm[5]  = 16'h0006;
		d_mm[6]  = 16'h0001;
		d_mm[7]  = 16'h0001;
		d_mm[8]  = 16'h0001;
		d_mm[9]  = 16'h0001;
		d_mm[10] = 16'h0001;
		d_mm[11] = 16'h0001;
		d_mm[12] = 16'h0001;
		d_mm[13] = 16'h0001;
		d_mm[14] = 16'h0001;
		d_mm[15] = 16'h0001;
	end

	always@(clk)
	begin
		if(MemWrite)
			d_mm[Address] = WriteData;
		else if(MemRead)
			ReadData = d_mm[Address];
	end
//	wire [15:0] tempRead,regOut1,regOut2,regOut3,regOut4,regOut5,regOut6,regOut7,regOut8,regOut9,regOut10,regOut11,regOut12,regOut13,regOut14,regOut15,regOut16;
//	wire [15:0] slt;
//	
//	Decoder4t16 dec(.E(MemWrite), .S(Address), .D(slt));
//	
//	register16bit reg1 ( .clk(clk), .reset(), .D(WriteData), .select(slt[0]),  .Q(regOut1 ));
//	register16bit reg2 ( .clk(clk), .reset(), .D(WriteData), .select(slt[1]),  .Q(regOut2 ));
//	register16bit reg3 ( .clk(clk), .reset(), .D(WriteData), .select(slt[2]),  .Q(regOut3 ));
//	register16bit reg4 ( .clk(clk), .reset(), .D(WriteData), .select(slt[3]),  .Q(regOut4 ));
//	register16bit reg5 ( .clk(clk), .reset(), .D(WriteData), .select(slt[4]),  .Q(regOut5 ));
//	register16bit reg6 ( .clk(clk), .reset(), .D(WriteData), .select(slt[5]),  .Q(regOut6 ));
//	register16bit reg7 ( .clk(clk), .reset(), .D(WriteData), .select(slt[6]),  .Q(regOut7 ));
//	register16bit reg8 ( .clk(clk), .reset(), .D(WriteData), .select(slt[7]),  .Q(regOut8 ));
//	register16bit reg9 ( .clk(clk), .reset(), .D(WriteData), .select(slt[8]),  .Q(regOut9 ));
//	register16bit reg10( .clk(clk), .reset(), .D(WriteData), .select(slt[9]),  .Q(regOut10));
//	register16bit reg11( .clk(clk), .reset(), .D(WriteData), .select(slt[10]), .Q(regOut11));
//	register16bit reg12( .clk(clk), .reset(), .D(WriteData), .select(slt[11]), .Q(regOut12));
//	register16bit reg13( .clk(clk), .reset(), .D(WriteData), .select(slt[12]), .Q(regOut13));
//	register16bit reg14( .clk(clk), .reset(), .D(WriteData), .select(slt[13]), .Q(regOut14));
//	register16bit reg15( .clk(clk), .reset(), .D(WriteData), .select(slt[14]), .Q(regOut15));
//	register16bit reg16( .clk(clk), .reset(), .D(WriteData), .select(slt[15]), .Q(regOut16));
//	
//	mux16x16x1 muxA(.select(Address), .A(regOut1),.B(regOut2),.C(regOut3),.D(regOut4),.E(regOut5),.F(regOut6),.G(regOut7),.H(regOut8),.I(regOut9),.J(regOut10),.K(regOut11),.L(regOut12),.M(regOut13),.N(regOut14),.O(regOut15),.P(regOut16), .Z(tempRead));
//	
//	always@(posedge clk)
//	begin
//		if(MemRead)
//			ReadData = tempRead; 
//	end


endmodule
