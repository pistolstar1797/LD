`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:33 06/05/2018 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input [7:0] in,
	 input clkin,
	 input reset,
    output reg [7:0] out
    );

	 always @(posedge clkin or posedge reset) begin
		if(reset == 1) begin
			out <= 0;
		end
		else begin
			out <= in;
		end
	end

endmodule
