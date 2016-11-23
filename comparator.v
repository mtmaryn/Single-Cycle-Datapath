`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module comparator( input X, input Y, output lt, output eq, output gt);	
	and and1(lt, ~X, Y);
	and and2(gt, X, ~Y);
	nor nor1(eq, lt, gt);
endmodule
