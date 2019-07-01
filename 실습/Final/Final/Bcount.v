`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:18 06/15/2018 
// Design Name: 
// Module Name:    Bcount 
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
module Bcount(
		 input clock,
		 input reset,
		 output reg [5:0] LED
    );
	 	 
	 always @ (posedge clock or posedge reset) begin
			if(reset == 1) begin
				LED <= 0;
			end
			else begin
				LED <= LED + 1;
			end
	 end

endmodule
