`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module alu(X, Y, out, Cin, Cout, lt, eq, gt, V, opcod);
	input  [15:0] X, Y;
	input  [2:0] opcod;
	input  Cin;
	output [15:0] out;
	output Cout, lt, eq, gt, V;
	
	reg [16:0] temp;
	
	always @(opcod or X or Y or Cin)
	begin
		case(opcod)
			0: temp = X + Y;
			1: temp = 1;
			2: temp = X & Y;
			3: temp = X | Y;
			4: temp = 4;
			5: temp = 5;
			6: temp = 6;
			7: temp = 7;
			default: temp = 8;
		endcase
	end
		
	assign out  = temp[15:0];
	assign Cout = temp[16];
	
endmodule
