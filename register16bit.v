`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module register16bit( clk, D, select, Q);
	input clk, select;
	input  [15:0] D;
	output [15:0] Q;
	wire 	 [15:0] Z;
	
	MUX_16bit MUX1( .select(select), .X(D), .Y(Q), .Z(Z) );
	dff d0 ( .clk(clk), .data(Z[0]),  .q(Q[0]) );
	dff d1 ( .clk(clk), .data(Z[1]),  .q(Q[1]) );
	dff d2 ( .clk(clk), .data(Z[2]),  .q(Q[2]) );
	dff d3 ( .clk(clk), .data(Z[3]),  .q(Q[3]) );
	dff d4 ( .clk(clk), .data(Z[4]),  .q(Q[4]) );
	dff d5 ( .clk(clk), .data(Z[5]),  .q(Q[5]) );
	dff d6 ( .clk(clk), .data(Z[6]),  .q(Q[6]) );
	dff d7 ( .clk(clk), .data(Z[7]),  .q(Q[7]) );
	dff d8 ( .clk(clk), .data(Z[8]),  .q(Q[8]) );	
	dff d9 ( .clk(clk), .data(Z[9]),  .q(Q[9]) );
	dff d10( .clk(clk), .data(Z[10]), .q(Q[10]) );	
	dff d11( .clk(clk), .data(Z[11]), .q(Q[11]) );	
	dff d12( .clk(clk), .data(Z[12]), .q(Q[12]) );	
	dff d13( .clk(clk), .data(Z[13]), .q(Q[13]) );
	dff d14( .clk(clk), .data(Z[14]), .q(Q[14]) );	
	dff d15( .clk(clk), .data(Z[15]), .q(Q[15]) );
	
endmodule
