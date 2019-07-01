`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:22 04/24/2018 
// Design Name: 
// Module Name:    HalfAdder 
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
module HalfAdder(
    input a,
    input b,
    output sum,
    output cout
    );
	 
	 xor(sum, a, b);
	 and(cout, a, b);


endmodule
