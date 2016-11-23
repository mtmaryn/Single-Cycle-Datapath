`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Subtraction can be used as a comparator
//////////////////////////////////////////////////////////////////////////////////
module Add2Com( A, B, Cin, Sum, Cout);
	input  [15:0]  A, B;
	input  Cin;
	output [15:0] Sum; 
	output Cout;	
	
	wire [15:0] B2C;
	wire	temp;
	
	
	two_comp two1( .X(B), .Y(B2C));	
	Add Add1( .A(A), .B(B2C), .Cin(1'b1), .Sum(Sum), .Cout(temp));
	assign Cout = temp;

endmodule
