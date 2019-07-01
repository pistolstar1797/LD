`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:30 06/12/2018
// Design Name:   microprocessor
// Module Name:   /csehome/pistolstar1797/Final/test.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: microprocessor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg _clk;
	reg reset;
	wire [7:0] instruction;

	// Outputs
	wire [7:0] address;
	wire [6:0] bnum;
	wire [6:0] snum;

	// Instantiate the Unit Under Test (UUT)
	microprocessor uut (
		._clk(_clk), 
		.reset(reset), 
		.instruction(instruction), 
		.address(address), 
		.bnum(bnum), 
		.snum(snum)
	);

	reg [7:0]inst[20:0];
	
	initial begin
		_clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		
		#100
		
		reset = 0;
		
		// Initialize Inputs
					
		inst[0] = 8'b01000100;
		inst[1] = 8'b01001001;
		inst[2] = 8'b00011001;
		inst[3] = 8'b10000100;
	 
	  inst[4] = 8'b01000100;
	  inst[5] = 8'b01001001;
	  inst[6] = 8'b00011001;
	  inst[7] = 8'b10000100;
	 
	  inst[8] = 8'b01000100;
	  inst[9] = 8'b01001001;
	  inst[10] = 8'b00011001;
	  inst[11] = 8'b10000100;
	 
	  inst[12] = 8'b01000100;
	  inst[13] = 8'b01001001;
	  inst[14] = 8'b00011001;
	  inst[15] = 8'b10000100;
	 
	  inst[16] = 8'b01000100;
	  inst[17] = 8'b01001001;
	  inst[18] = 8'b00011001;
	  inst[19] = 8'b10000100;

	  inst[20] = 8'b11000011;
	  
	  
		
	end
	
	always #10 _clk = ~_clk;
	assign instruction = inst[address];
	
endmodule

