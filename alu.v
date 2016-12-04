`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module alu(clk,X, Y, out, Cin, Cout, lt, eq, gt, V, opcod);
	input  [15:0] X, Y;
	input  [2:0] opcod;
	input  Cin,clk;
	output [15:0] out;
	output Cout, lt, eq, gt, V;
	wire [16:0] add, sub, andL, orL;
	reg [16:0] temp;
	
	Add2Com add1( .A(X), .B(Y), .Cin(Cin), .neg(1'b0), .Sum(add[15:0]), .Cout(add[16]));
	Add2Com sub1(.A(X), .B(Y), .Cin(1'b1), .neg(1'b1), .Sum(sub[15:0]), .Cout(sub[16]));
	OR or1(.X(X), .Y(Y), .Z(orL));
	AND and1(.X(X), .Y(Y), .Z(andL));
	comparator16bit com1( .X(X), .Y(Y), .lt(lt), .eq(eq), .gt(gt));	
	
	always @(clk)
	begin
		case(opcod)
			0: temp = add;
			1: temp = sub;
			2: temp = andL;
			3: temp = orL;
			4: begin
				if(lt)
					temp = 1;
				else 
					temp = 0;
				end
			5:begin
				if(eq)
					temp = 0;
				end
			default: temp = 8;
		endcase
	end
		
	assign out  = temp[15:0];
	assign Cout = temp[16];
	
endmodule
