`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:37 06/05/2018 
// Design Name: 
// Module Name:    memory 
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
module memory(
    input [7:0] address,
    input [7:0] wd,
	 input clock,
    input read,
    input write,
    input reset,
	 output [7:0] rd
    );
	 reg [7:0]data[31:0];
	 integer i;
	 initial begin
	 for(i = 0 ; i < 16 ; i = i + 1) begin
			 data[i] = i;
			 data[31 - i] = i - 15;
		 end
	 end
	 always @(posedge clock or posedge reset) begin
		 if(reset == 1) begin
			 for(i = 0 ; i < 16 ; i = i + 1) begin
				 data[i] = i;
				 data[31 - i] = i - 15;
			 end
		 end
		 
		 else if(write == 1) begin
			 data[address] = wd;
		 end
	 end
	 
	 assign rd = data[address];
			 
				 
		 


endmodule
