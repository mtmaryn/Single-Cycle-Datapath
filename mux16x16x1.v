`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mux16x16x1(select, A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P, Z);
	input [3:0] select;
	input [15:0] A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P;
	output [15:0] Z;
	wire [15:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14;

	MUX_16bit MUX1(.select(select[0]), .X(A), .Y(B), .Z(w1));
	MUX_16bit MUX2(.select(select[0]), .X(C), .Y(D), .Z(w2));
	MUX_16bit MUX3(.select(select[0]), .X(E), .Y(F), .Z(w3));
	MUX_16bit MUX4(.select(select[0]), .X(G), .Y(H), .Z(w4));
	MUX_16bit MUX5(.select(select[0]), .X(I), .Y(J), .Z(w5));
	MUX_16bit MUX6(.select(select[0]), .X(K), .Y(L), .Z(w6));
	MUX_16bit MUX7(.select(select[0]), .X(M), .Y(N), .Z(w7));
	MUX_16bit MUX8(.select(select[0]), .X(O), .Y(P), .Z(w8));
	
	MUX_16bit MUX9 (.select(select[1]), .X(w1), .Y(w2), .Z(w9));
	MUX_16bit MUX10(.select(select[1]), .X(w3), .Y(w4), .Z(w10));
	MUX_16bit MUX11(.select(select[1]), .X(w5), .Y(w6), .Z(w11));
	MUX_16bit MUX12(.select(select[1]), .X(w7), .Y(w8), .Z(w12));
	
	MUX_16bit MUX13(.select(select[2]), .X(w9), .Y(w10), .Z(w13));
	MUX_16bit MUX14(.select(select[2]), .X(w11), .Y(w12), .Z(w14));
	
	MUX_16bit MUX15(.select(select[3]), .X(w13), .Y(w14), .Z(Z));
	
endmodule
