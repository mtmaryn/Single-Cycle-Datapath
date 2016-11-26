`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Subtraction can be used as a comparator
//////////////////////////////////////////////////////////////////////////////////
module Add2Com( A, B, Cin, neg, Sum, Cout);
	input  [15:0]  A, B;
	input  Cin;
	input neg;
	output [15:0] Sum; 
	output Cout;	
	
	wire [15:0] B2C;
	wire	temp;
	
	
	one_comp one1( .X(B), .neg(neg),.Y(B2C));	
	Add Add1( .A(A), .B(B2C), .Cin(neg), .Sum(Sum), .Cout(temp));
	assign Cout = temp;

endmodule
