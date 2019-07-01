`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:06 04/24/2018
// Design Name:   OneBitALU
// Module Name:   /csehome/ld15/OneBitALU/OneBitALU_test.v
// Project Name:  OneBitALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OneBitALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OneBitALU_test;

	// Inputs
	reg m;
	reg [1:0] s;
	reg a;
	reg b;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	OneBitALU uut (
		.m(m), 
		.s(s), 
		.a(a), 
		.b(b), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		m = 0; s = 0; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 1; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 2; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 3; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		m = 1; s = 0; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 1; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 2; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;
		s = 3; a = 0; b = 0; #50;
		b = 1; #50;
		a = 1; b = 0; #50;
		b = 1; #50;



	end
      
endmodule

