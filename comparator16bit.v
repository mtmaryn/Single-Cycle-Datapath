`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module comparator16bit( input [15:0] X, input [15:0] Y, output lt, output eq, output gt);	
	wire [15:0] ltw,eqw,gtw;
	
	comparator com0(  .X(X[0]),  .Y(Y[0]),  .lt(ltw[0]),  .eq(eqw[0]),  .gt(gtw[0]));
	comparator com1(  .X(X[1]),  .Y(Y[1]),  .lt(ltw[1]),  .eq(eqw[1]),  .gt(gtw[1]));
	comparator com2(  .X(X[2]),  .Y(Y[2]),  .lt(ltw[2]),  .eq(eqw[2]),  .gt(gtw[2]));	
	comparator com3(  .X(X[3]),  .Y(Y[3]),  .lt(ltw[3]),  .eq(eqw[3]),  .gt(gtw[3]));
	comparator com4(  .X(X[4]),  .Y(Y[4]),  .lt(ltw[4]),  .eq(eqw[4]),  .gt(gtw[4]));
	comparator com5(  .X(X[5]),  .Y(Y[5]),  .lt(ltw[5]),  .eq(eqw[5]),  .gt(gtw[5]));
	comparator com6(  .X(X[6]),  .Y(Y[6]),  .lt(ltw[6]),  .eq(eqw[6]),  .gt(gtw[6]));
	comparator com7(  .X(X[7]),  .Y(Y[7]),  .lt(ltw[7]),  .eq(eqw[7]),  .gt(gtw[7]));
	comparator com8(  .X(X[8]),  .Y(Y[8]),  .lt(ltw[8]),  .eq(eqw[8]),  .gt(gtw[8]));
	comparator com9(  .X(X[9]),  .Y(Y[9]),  .lt(ltw[9]),  .eq(eqw[9]),  .gt(gtw[9]));
	comparator com10( .X(X[10]), .Y(Y[10]), .lt(ltw[10]), .eq(eqw[10]), .gt(gtw[10]));
	comparator com11( .X(X[11]), .Y(Y[11]), .lt(ltw[11]), .eq(eqw[11]), .gt(gtw[11]));
	comparator com12( .X(X[12]), .Y(Y[12]), .lt(ltw[12]), .eq(eqw[12]), .gt(gtw[12]));
	comparator com13( .X(X[13]), .Y(Y[13]), .lt(ltw[13]), .eq(eqw[13]), .gt(gtw[13]));
	comparator com14( .X(X[14]), .Y(Y[14]), .lt(ltw[14]), .eq(eqw[14]), .gt(gtw[14]));
	comparator com15( .X(X[15]), .Y(Y[15]), .lt(ltw[15]), .eq(eqw[15]), .gt(gtw[15]));

	assign eq = eqw[0] & eqw[1] & eqw[2]&eqw[3]&eqw[4]&eqw[5]&eqw[6]&eqw[7]&eqw[8]&eqw[9]&eqw[10]&eqw[11]&eqw[12]&eqw[13]&eqw[14]&eqw[15];
	assign lt = (ltw[15]) | (ltw[14] & eqw[15]) | (ltw[13] & eqw[14] & eqw[15]) | (ltw[12] & eqw[13]& eqw[14]& eqw[15])  | (ltw[11] & eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[10] &  eqw[11]& eqw[12]& eqw[13]& eqw[14]&eqw[15]) | (ltw[9] & eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[8] & eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[5] & eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[4] & eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[3] & eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[2] &eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[1] & eqw[2]& eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (ltw[0] & eqw[1] & eqw[2]& eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]);
	assign gt = (gtw[15]) | (gtw[14] & eqw[15]) | (gtw[13] & eqw[14] & eqw[15]) | (gtw[12] & eqw[13]& eqw[14]& eqw[15])  | (gtw[11] & eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[10] & eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[9] & eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[8] & eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[5] & eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[4] & eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[3] & eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[2] & eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[1] & eqw[2]& eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]) | (gtw[0] & eqw[1] & eqw[2]& eqw[3]& eqw[4]& eqw[5]& eqw[6]& eqw[7]& eqw[8]& eqw[9]& eqw[10]& eqw[11]& eqw[12]& eqw[13]& eqw[14]& eqw[15]);

endmodule
