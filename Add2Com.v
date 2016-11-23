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
	
	xor xor1(B2C,B,neg);
	two_comp two1( .X(B), .Y(B2C));	
	Add Add1( .A(A), .B(B2C), .Cin(neg), .Sum(Sum), .Cout(temp));
	assign Cout = temp;

endmodule
