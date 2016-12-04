`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module Mips_test;

	// Inputs
	reg clk;
	reg clear;

	// Outputs
	wire PC;
	wire [15:0] R1;
	wire [15:0] R2;
	wire [15:0] R3;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk), 
		.clear(clear), 
		.PC(PC), 
		.R1(R1), 
		.R2(R2), 
		.R3(R3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clear = 0;
		forever #1 clk = ~clk;
	end
	initial begin
		clear = 1;
		#2;
		clear = 0;
		#1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

