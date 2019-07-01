`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:11 06/05/2018 
// Design Name: 
// Module Name:    signextend 
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
module signextend(
    input [1:0] in,
    output [7:0] out
    );
	
	 assign out = (in == 2'b00) ? 8'b00000000 :
					  (in == 2'b01) ? 8'b00000001 :
					  (in == 2'b10) ? 8'b11111110 :
					  8'b11111111;

endmodule
