`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module Add( A, B, Cin, Sum, Cout);
	input  [15:0]  A, B;
	input  Cin;
	output [15:0] Sum; 
	output Cout;	
	
	wire[15:0] tSum, tCin;
	
	Full_Adder zero    (.A(A[0]), .B(B[0]), .Cin(Cin),     .Sum(tSum[0]), .Cout(tCin[1]));
	Full_Adder first   (.A(A[1]), .B(B[1]), .Cin(tCin[1]), .Sum(tSum[1]), .Cout(tCin[2]));
	Full_Adder second  (.A(A[2]), .B(B[2]), .Cin(tCin[2]), .Sum(tSum[2]), .Cout(tCin[3]));
	Full_Adder third   (.A(A[3]), .B(B[3]), .Cin(tCin[3]), .Sum(tSum[3]), .Cout(tCin[4]));
	Full_Adder fourth  (.A(A[4]), .B(B[4]), .Cin(tCin[4]), .Sum(tSum[4]), .Cout(tCin[5]));
	Full_Adder fifth   (.A(A[5]), .B(B[5]), .Cin(tCin[5]), .Sum(tSum[5]), .Cout(tCin[6]));
	Full_Adder sixth   (.A(A[6]), .B(B[6]), .Cin(tCin[6]), .Sum(tSum[6]), .Cout(tCin[7]));
	Full_Adder seventh (.A(A[7]), .B(B[7]), .Cin(tCin[7]), .Sum(tSum[7]), .Cout(tCin[8]));
	
	Full_Adder eighth     	(.A(A[8]),  .B(B[8]),  .Cin(tCin[8]),  .Sum(tSum[8]),  .Cout(tCin[9]));
	Full_Adder ninth   	 	(.A(A[9]),  .B(B[9]),  .Cin(tCin[9]),  .Sum(tSum[9]),  .Cout(tCin[10]));
	Full_Adder tenth  	 	(.A(A[10]), .B(B[10]), .Cin(tCin[10]), .Sum(tSum[10]), .Cout(tCin[11]));
	Full_Adder eleventh   	(.A(A[11]), .B(B[11]), .Cin(tCin[11]), .Sum(tSum[11]), .Cout(tCin[12]));
	Full_Adder twelveth   	(.A(A[12]), .B(B[12]), .Cin(tCin[12]), .Sum(tSum[12]), .Cout(tCin[13]));
	Full_Adder thirteenth 	(.A(A[13]), .B(B[13]), .Cin(tCin[13]), .Sum(tSum[13]), .Cout(tCin[14]));
	Full_Adder fourthteenth (.A(A[14]), .B(B[14]), .Cin(tCin[14]), .Sum(tSum[14]), .Cout(tCin[15]));
	Full_Adder fifthteenth  (.A(A[15]), .B(B[15]), .Cin(tCin[15]), .Sum(tSum[15]), .Cout(Cout));
	
	assign Sum = tSum;
endmodule
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////