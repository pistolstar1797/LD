`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:19 06/05/2018 
// Design Name: 
// Module Name:    control 
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
module control(
    input [1:0] in,
    output [7:0] out
    );

	 assign out = (in == 2'b00) ? 8'b00001011 :
					  (in == 2'b01) ? 8'b01100110 :
					  (in == 2'b10) ? 8'b00010100 :
					  8'b10000000;
endmodule
