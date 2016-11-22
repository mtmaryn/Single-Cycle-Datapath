`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module MUX_16bit(input select, input[15:0] X, input[15:0] Y, output[15:0] Z);
	
	MUX MUX0 (.select(select), .in({X[0], Y[0]}),  .out(Z[0]));
	MUX MUX1 (.select(select), .in({X[1], Y[1]}),  .out(Z[1]));
	MUX MUX2 (.select(select), .in({X[2], Y[2]}),  .out(Z[2]));
	MUX MUX3 (.select(select), .in({X[3], Y[3]}),  .out(Z[3]));
	MUX MUX4 (.select(select), .in({X[4], Y[4]}),  .out(Z[4]));
	MUX MUX5 (.select(select), .in({X[5], Y[5]}),  .out(Z[5]));
	MUX MUX6 (.select(select), .in({X[6], Y[6]}),  .out(Z[6]));
	MUX MUX7 (.select(select), .in({X[7], Y[7]}),  .out(Z[7]));
	MUX MUX8 (.select(select), .in({X[8], Y[8]}),  .out(Z[8]));
	MUX MUX9 (.select(select), .in({X[9], Y[9]}),  .out(Z[9]));
	MUX MUX10(.select(select), .in({X[10],Y[10]}), .out(Z[10]));
	MUX MUX11(.select(select), .in({X[11],Y[11]}), .out(Z[11]));
	MUX MUX12(.select(select), .in({X[13],Y[12]}), .out(Z[12]));
	MUX MUX13(.select(select), .in({X[13],Y[13]}), .out(Z[13]));
	MUX MUX14(.select(select), .in({X[14],Y[14]}), .out(Z[14]));
	MUX MUX15(.select(select), .in({X[15],Y[15]}), .out(Z[15]));
	
endmodule
