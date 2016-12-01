`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

module com16;

	// Inputs
	reg [15:0] X;
	reg [15:0] Y;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator16bit uut (
		.X(X), 
		.Y(Y), 
		.lt(lt), 
		.eq(eq), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		X= 9;
		Y=7;
		#10;
		X= 4;
		Y=4;
		#10;
		X= 1;
		Y=5;
		#10;
		X= 30;
		Y=21;
		#10;
		X= 56;
		Y=18;
		#10;
	end
      
endmodule

