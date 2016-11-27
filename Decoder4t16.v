`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:52 11/26/2016 
// Design Name: 
// Module Name:    Decoder4t16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Decoder4t16(
    input E,
    input [3:0] S,
    output [15:0] D
    );

wire w1;

not(w1,S[3]);
Decoder3t8 DEC1(S[2:0],N,D[7:0]);
Decoder3t8 DEC2(S[2:0],w1,D[15:8]);

endmodule
