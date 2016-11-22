`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module Mux_16_test;

	// Inputs
	reg select;
	reg [15:0] X;
	reg [15:0] Y;

	// Outputs
	wire [15:0] Z;

	// Instantiate the Unit Under Test (UUT)
	MUX_16bit uut (
		.select(select), 
		.X(X), 
		.Y(Y), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		X = 0;
		Y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		X = 16;
		Y = 23;
		#10;
		select = 1;
		#10;
		select = 0;
	end
      
endmodule

