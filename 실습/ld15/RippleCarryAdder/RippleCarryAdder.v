`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:26 04/24/2018 
// Design Name: 
// Module Name:    RippleCarryAdder 
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
module RippleCarryAdder(
    input [1:0] a,
    input [1:0] b,
    input c0,
    output [1:0] s,
    output c2
    );

	 wire c1;
	 
	 FullAdder T1(.a(a[0]), .b(b[0]), .cin(c0), .sum(s[0]), .cout(c1));
	 FullAdder T2(.a(a[1]), .b(b[1]), .cin(c1), .sum(s[1]), .cout(c2));
	
endmodule
