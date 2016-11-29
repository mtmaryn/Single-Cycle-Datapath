`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module reg_file( A, B, C, Aaddr, Baddr, Caddr, load, clear, clk );
	input  load, clk, clear;
	input  [15:0] C;
	input  [3:0] Aaddr, Baddr, Caddr;
	output [15:0] A, B;
	
	wire [15:0] regOut1,regOut2,regOut3,regOut4,regOut5,regOut6,regOut7,regOut8,regOut9,regOut10,regOut11,regOut12,regOut13,regOut14,regOut15,regOut16;
	wire [15:0] slt;
	
	Decoder4t16 dec(.E(load), .S(Caddr), .D(slt));
	//The 16 registers
	register16bit reg1 ( .clk(clk), .D(C), .select(slt[0]),  .Q(regOut1 ));
	register16bit reg2 ( .clk(clk), .D(C), .select(slt[1]),  .Q(regOut2 ));
	register16bit reg3 ( .clk(clk), .D(C), .select(slt[2]),  .Q(regOut3 ));
	register16bit reg4 ( .clk(clk), .D(C), .select(slt[3]),  .Q(regOut4 ));
	register16bit reg5 ( .clk(clk), .D(C), .select(slt[4]),  .Q(regOut5 ));
	register16bit reg6 ( .clk(clk), .D(C), .select(slt[5]),  .Q(regOut6 ));
	register16bit reg7 ( .clk(clk), .D(C), .select(slt[6]),  .Q(regOut7 ));
	register16bit reg8 ( .clk(clk), .D(C), .select(slt[7]),  .Q(regOut8 ));
	register16bit reg9 ( .clk(clk), .D(C), .select(slt[8]),  .Q(regOut9 ));
	register16bit reg10( .clk(clk), .D(C), .select(slt[9]),  .Q(regOut10));
	register16bit reg11( .clk(clk), .D(C), .select(slt[10]), .Q(regOut11));
	register16bit reg12( .clk(clk), .D(C), .select(slt[11]), .Q(regOut12));
	register16bit reg13( .clk(clk), .D(C), .select(slt[12]), .Q(regOut13));
	register16bit reg14( .clk(clk), .D(C), .select(slt[13]), .Q(regOut14));
	register16bit reg15( .clk(clk), .D(C), .select(slt[14]), .Q(regOut15));
	register16bit reg16( .clk(clk), .D(C), .select(slt[15]), .Q(regOut16));
	
	//Muxs
	mux16x16x1 muxA(.select(Aaddr), .A(regOut1),.B(regOut2),.C(regOut3),.D(regOut4),.E(regOut5),.F(regOut6),.G(regOut7),.H(regOut8),.I(regOut9),.J(regOut10),.K(regOut11),.L(regOut12),.M(regOut13),.N(regOut14),.O(regOut15),.P(regOut16), .Z(A));
	mux16x16x1 muxB(.select(Baddr), .A(regOut1),.B(regOut2),.C(regOut3),.D(regOut4),.E(regOut5),.F(regOut6),.G(regOut7),.H(regOut8),.I(regOut9),.J(regOut10),.K(regOut11),.L(regOut12),.M(regOut13),.N(regOut14),.O(regOut15),.P(regOut16), .Z(B));


endmodule
